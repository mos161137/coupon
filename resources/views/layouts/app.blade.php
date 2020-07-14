<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <title>Picture System</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <!-- App favicon -->
        <link rel="shortcut icon" href="{{asset('images/favicon.png')}}">
        <!-- Table Responsive css -->
        <link href="{{asset('plugins/responsive-table/css/rwd-table.min.css')}}" rel="stylesheet" type="text/css" media="screen">
        <!-- App css -->
        <link href="{{asset('css/icons.css')}}" rel="stylesheet" type="text/css" />
        <link href="{{asset('css/metismenu.min.css')}}" rel="stylesheet" type="text/css" />
        <link href="{{asset('css/style.css')}}" rel="stylesheet" type="text/css" />
        <link href="{{asset('css/bootstrap.min.css')}}" rel="stylesheet" type="text/css" />
        <script src="{{asset('js/modernizr.min.js')}}"></script>
    </head>


    <body>

        <!-- Begin page -->
        <div id="wrapper">
            <!-- Top Bar Start -->
            <div class="topbar">
                <!-- LOGO -->
                <div class="topbar-left" style="background-color:lightblue">
                    <a href="{{url('')}}" class="logo">
                        <span>
                            <img src="{{asset('images/ahs-logo-eng.png')}}" alt="" width="60">
                        </span>
                        <i>
                            <img src="{{asset('images/ahs-logo-eng.png')}}" alt="" width="60">
                        </i>
                    </a>
                </div>

                <nav class="navbar-custom">
                    <ul class="list-unstyled topbar-right-menu float-right mb-0">
                        <li class="dropdown notification-list">
                            <a class="nav-link dropdown-toggle waves-effect waves-light nav-user" data-toggle="dropdown" href="#" role="button"
                               aria-haspopup="false" aria-expanded="false">
                               @if(!empty(Auth::user()->name))
                                <img src="{{asset('images/users/avatar-1.jpg')}}" alt="user" class="rounded-circle"> <span class="ml-1">{{Auth::user()->name}} {{Auth::user()->user_type}}<i class="mdi mdi-chevron-down"></i> </span>
                               @endif
                            </a>
                            <div class="dropdown-menu dropdown-menu-right profile-dropdown ">
                                <!-- item-->
                                <div class="dropdown-item noti-title">
                                    <h6 class="text-overflow m-0">Welcome !</h6>
                                </div>

                                <!-- item-->
                                <a href="javascript:void(0);" class="dropdown-item notify-item">
                                    <i class="fi-head"></i> <span>My Account</span>
                                </a>
                                <!-- item-->

								<a class="dropdown-item notify-item" href="{{ route('logout') }}"
								   onclick="event.preventDefault();
												 document.getElementById('logout-form').submit();">
									<i class="fi-power"></i>
									{{ __('Logout') }}
								</a>

								<form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
									@csrf
								</form>

                            </div>
                        </li>

                    </ul>

                    <ul class="list-inline menu-left mb-0">
                        <li class="float-left">
                            <button class="button-menu-mobile open-left waves-light waves-effect" id="openpage">
                                {{--<i class="dripicons-menu"></i>--}}
                            </button>
                        </li>
                    </ul>
                </nav>
            </div>

            <!-- ========== Left Sidebar Start ========== -->
            <div class="left side-menu" style="width: 70px;background: #e0e0e0;" id="remove-scroll">
                <div class="slimscroll-menu" id="remove-scroll">

                    <!--- Sidemenu -->
                    <div id="sidebar-menu">
                        <!-- Left Menu Start -->
                        <ul class="metismenu" id="side-menu">
                            <li style="height: 50px"><a href="{{url('')}}"><i class="dripicons-home"></i></a></li>
                        
                            @if(!empty(Auth::user()->user_type))
                                @if(Auth::user()->user_type=="admin")
                                    <li><a href="{{url('')}}/user"><i class="dripicons-user"></i></a></li>
                                    <li><a href="{{url('')}}/admin_procedure"><i class="dripicons-media-shuffle"></i></a></li>
                                    <li><a href="{{url('')}}/admin_question"><i class="dripicons-information"></i></a></li>
                                    <li><a href="{{url('')}}/admin_article"><i class="dripicons-document-edit"></i></a></li>
                                    <li><a href="{{url('')}}/social"><i class="dripicons-broadcast"></i></a></li>
                                @endif
                            @endif

                        </ul>
                    </div>
                    <!-- Sidebar -->
                    <div class="clearfix"></div>
                </div>
                <!-- Sidebar -left -->
            </div>
            <!-- Left Sidebar End -->



            <!-- ============================================================== -->
            <!-- Start right Content here -->
            <!-- ============================================================== -->
            <div class="content-page" style="margin-left: 70px;">
                <!-- Start content -->
                <div class="content">
                    <div class="container-fluid">

                        @yield('content')

                    </div> <!-- container -->
                </div> <!-- content -->
                <footer class="footer text-right">
                    © Telecorp.
                </footer>

            </div>


            <!-- ============================================================== -->
            <!-- End Right content here -->
            <!-- ============================================================== -->



        </div>
        <!-- END wrapper -->

        <!-- jQuery  -->
        <script src="{{asset('js/jquery.min.js')}}"></script>
        <script src="{{asset('js/popper.min.js')}}"></script>
        <script src="{{asset('js/bootstrap.min.js')}}"></script>
        {{--<script src="{{asset('js/metisMenu.min.js')}}"></script>--}}
        <script src="{{asset('js/waves.js')}}"></script>
        <script src="{{asset('js/jquery.slimscroll.js')}}"></script>

        <!-- responsive-table-->
        <script src="{{asset('plugins/responsive-table/js/rwd-table.min.js')}}" type="text/javascript"></script>
        <!-- App js -->
        <script src="{{asset('js/jquery.core.js')}}"></script>
        <script src="{{asset('js/jquery.app.js')}}"></script>
        <!-- Jquery-Ui -->
        <script src="{{asset('plugins/jquery-ui/jquery-ui.min.js')}}"></script>

        <!-- SCRIPTS -->
        <script src="{{asset('plugins/moment/moment.js')}}"></script>
        <script src="{{asset('plugins/fullcalendar/js/fullcalendar.min.js')}}"></script>
        <!--<script src="{{asset('pages/jquery.calendar.js')}}"></script>-->


        <link href="{{asset('css/shards-dashboards.1.0.0.min.css')}}" rel="stylesheet" type="text/css" />
        <script src="{{asset('js/shards.min.js')}}"></script>

        <script>
            $(function() {
                $('.table-responsive').responsiveTable({
                    addDisplayAllBtn: 'btn btn-secondary'
                });
            });
        </script>


        @yield('endscript')

    </body>
</html>



        <script type="text/javascript">
            //$("#openpage").trigger('click');
        </script>

        <style type="text/css">
            #sidebar-menu ul > li:hover > a {
                width: 70px;
            }

            #sidebar-menu ul li a i {
                display: inline-block;
                font-size: 18px;
                line-height: 17px;
                margin: 0 0px 0 3px;
                text-align: center;
                vertical-align: middle;
                width: 20px;
            }


        </style>