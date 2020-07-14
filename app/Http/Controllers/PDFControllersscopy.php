<?php
namespace App\Http\Controllers;

use Auth;
use DB;
use Illuminate\Http\Request;
use PDF;

class PDF1Controller extends Controller
{
    public function pdf(Request $r)
    {
        $id = $r['id'];

        // if (Auth::user()->user_type == "doctor") {
        //     DB::table('tb_case')->where('case_id', $id)->update(['case_status' => '2']);
        // }


        dd($id);
        $scopeselect = DB::table('photo')
            ->join('scope', 'scope.scope_id', 'photo.photo_scope')
            ->distinct('photo_scope')
            ->where([['photo_case', '=', $id]])->get();

        $photoselect = DB::table('photo')
            ->leftjoin('tb_mainpartsub', 'tb_mainpartsub.mainpartsub_id', 'photo.photo_mainpartsub')
            ->select('photo.*', 'tb_mainpartsub.*')
            ->where([
                ['photo_case', '=', $id],
                ['photo_select', '=', 1],
                ['photo_name', 'NOT LIKE', '%.mp4%'],

            ])
            ->orderBy('photo_num_select', 'asc')
            ->get();

        $photoselectonly = DB::table('photo')
            ->leftjoin('tb_mainpartsub', 'tb_mainpartsub.mainpartsub_id', 'photo.photo_mainpartsub')
            ->select('photo.*', 'tb_mainpartsub.*')
            ->where([
                ['photo_case', '=', $id],
                ['photo_select', '=', 1],
                ['photo_status', '=', 1],
                ['photo_name', 'NOT LIKE', '%.mp4%'],
            ])
            ->get();

        $hospital = DB::table('hospital')->get();
        $doctor01 = DB::table('tb_case as tc')->join('users as u', 'tc.datemeet_physicians01', 'u.id')->select('u.name')->where('tc.case_id', '=', $id)->get();
        $doctor02 = DB::table('tb_case as tc')->join('users as u', 'tc.datemeet_physicians02', 'u.id')->select('u.name')->where('tc.case_id', '=', $id)->get();
        $nurse01  = DB::table('tb_case as tc')->join('users as u', 'tc.datemeet_nurse01', 'u.id')->select('u.name')->where('tc.case_id', '=', $id)->get();
        $nurse02  = DB::table('tb_case as tc')->join('users as u', 'tc.datemeet_nurse02', 'u.id')->select('u.name')->where('tc.case_id', '=', $id)->get();
        $nurse03  = DB::table('tb_case as tc')->join('users as u', 'tc.datemeet_nurse03', 'u.id')->select('u.name')->where('tc.case_id', '=', $id)->get();
        $anes     = DB::table('tb_case as tc')->join('users as u', 'tc.anes', 'u.id')->select('u.name')->where('tc.case_id', '=', $id)->get();
        $staff01  = DB::table('tb_case as tc')->join('users as u', 'tc.datemeet_staff01', 'u.id')->select('u.name')->where('tc.case_id', '=', $id)->get();
        $staff02  = DB::table('tb_case as tc')->join('users as u', 'tc.datemeet_staff02', 'u.id')->select('u.name')->where('tc.case_id', '=', $id)->get();
        $casedata = DB::table('tb_case')
        ->join('patient', 'tb_case.case_patientid', '=', 'patient.id')
        ->join('dd_gender', 'patient.gender', '=', 'dd_gender.id')
        ->join('tb_procedure', 'tb_case.dateopen_procudure', '=', 'tb_procedure.procedure_id')
        ->leftjoin('dd_visualization', 'tb_case.visualization', '=', 'dd_visualization.visualization_id')
        ->leftjoin('dd_quality', 'tb_case.quality_preparation', '=', 'dd_quality.quality_id')
        ->leftjoin('dd_anesthesia', 'tb_case.datemeet_anesthesia', '=', 'dd_anesthesia.anesthesia_id')
        ->leftjoin('dd_discharge', 'tb_case.discharge_to', '=', 'dd_discharge.discharge_id')
        ->select(
            'tb_case.*',
            'patient.*',
            'dd_gender.name as gender_name',
            'tb_procedure.*',
            'dd_visualization.visualization_name',
            'dd_quality.quality_name',
            'dd_anesthesia.anesthesia_name',
            'dd_discharge.discharge_name'
        )
        ->where('tb_case.case_id', '=', $id)
        ->first();

        $mainpart = DB::table('tb_case')
        ->join('tb_mainpart', 'tb_mainpart.mainpart_procedure_id', '=', 'tb_case.dateopen_procudure')
        ->select('tb_mainpart.*')
        ->where('tb_case.case_id', '=', $id)
        ->get();

        if ($r['type'] == "ProcedureDraw") {
            $view  = "pdf.pdf_proceduredraw";
            $view2 = "pdf.pdf_procedure_page2";
            $countrow = DB::table('photo')->where([['photo_case','=',$id],['photo_num_select','!=','0']])->count();
        }


        if ($r['type'] == "ProcedureWriting") {
            $view  = "pdf.pdf_procedurewriting";
            $view2 = "pdf.pdf_procedure_page2";
            $countrow = DB::table('photo')->where([['photo_case','=',$id],['photo_num_select','!=','0']])->count();
        }



        if ($r['type'] == "Procedure") {
            $view  = "pdf.pdf_procedure";
            $view2 = "pdf.pdf_procedure_page2";
            $countrow = DB::table('photo')->where([['photo_case','=',$id],['photo_num_select','!=','0']])->count();
        }

        if ($r['type'] == "Pathology") {
            $view  = "pdf.pdf_pathology";
            $view2 = "pdf.pdf_pathology_page2";
            $countrow = DB::table('photo')->where([['photo_case','=',$id],['photo_status','=','1']])->count();
        }

        if ($r['type'] == "Discharge") {
            $view  = "pdf.pdf_discharge";
            $view2 = "pdf.pdf_discharge_page2";
            $countrow = DB::table('photo')->where([['photo_case','=',$id],['photo_status','=','1']])->count();
        }

        if ($r['type'] == "Accessory") {
            $view  = "pdf.pdf_accessory";
            $view2 = "pdf.pdf_discharge_page2";
            $countrow = DB::table('photo')->where([['photo_case','=',$id],['photo_status','=','1']])->count();
        }

        if ($r['type'] == "ProcedureDraw" || $r['type']=="ProcedureWriting" ) {
            $num1 = 4; //7
            $num2 = 5; //8
            $num3 = 8; //
        } else {
            $num1 = 8;
            $num2 = 9;
            $num3 = 8;
        }

        $num = ceil(($countrow - $num1) / 9);

        if ($num == 0) {$onepage = true;} else { $onepage = false;}

        $pdf = PDF::loadView($view, [
            'onepage'         => $onepage,
            'hospital'        => $hospital,
            'scopeselect'     => $scopeselect,
            'casedata'        => $casedata,
            'mainpart'        => $mainpart,
            'photoselect'     => $photoselect,
            'photoselectonly' => $photoselectonly,
            'doctor01'        => $doctor01,
            'doctor02'        => $doctor02,
            'nurse01'         => $nurse01,
            'nurse02'         => $nurse02,
            'nurse03'         => $nurse03,
            'anes'            => $anes,
            'staff01'         => $staff01,
            'staff02'         => $staff02,
        ]);


        for ($i = 0; $i < $num; $i++) {
            $photostart = ($i * 9) + $num2;
            $photoend   = $photostart + $num3;
            $lastpage   = $num - 1;
            if ($i == $lastpage) {$paperend = "true";} else { $paperend = "false";}

            $pdf->loadView($view2, [
                'paperend'        => $paperend,
                'photoend'        => $photoend,
                'photostart'      => $photostart,
                'hospital'        => $hospital,
                'scopeselect'     => $scopeselect,
                'casedata'        => $casedata,
                'photoselect'     => $photoselect,
                'photoselectonly' => $photoselectonly,
                'doctor01'        => $doctor01,
                'doctor02'        => $doctor02,
                'nurse01'         => $nurse01,
                'nurse02'         => $nurse02,
                'nurse03'         => $nurse03,
                'anes'            => $anes,
                'staff01'         => $staff01,
                'staff02'         => $staff02,
            ]); // or $pdf->loadHtml($html) or $pdf->WriteHTML('html)

        }

        //if(isset($_GET['savepdf'])){

            $hn        = $casedata->hn;
            $checkfile = file_exists("store/" . $hn);
            if ($checkfile == 0) {
                mkdir("store/" . $hn);
            }

            $checkfile = file_exists("store/" . $hn . "/pdf");
            if ($checkfile == 0) {
                mkdir("store/" . $hn . "/pdf");
            }

            $filename = $hn."_".$casedata->case_id."_".$r['type'];

            @$pdf->Output('store/'.$hn."/pdf/".$filename.'.pdf','F');
        //}

        return @$pdf->stream();

    }

}
