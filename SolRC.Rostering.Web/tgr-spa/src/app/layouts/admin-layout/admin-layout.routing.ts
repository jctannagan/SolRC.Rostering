import { Routes } from '@angular/router';

import { DashboardComponent } from '../../dashboard/dashboard.component';
import { FloorPlanComponent } from '../../floor-plan/floorplan.component';
import { ReportComponent } from '../../reports/report.component';
import { HelpComponent } from '../../help/help.component';
import { NotificationsComponent } from '../../notifications/notifications.component';
import { ScheduleComponent } from 'app/schedule/schedule.component';
import { EmployeeComponent } from 'app/user-profile/employee.component';

export const AdminLayoutRoutes: Routes = [
    { path: 'dashboard',      component: DashboardComponent },
    { path: 'employee',       component: EmployeeComponent },
    { path: 'floor-plan',     component: FloorPlanComponent },
    { path: 'reports',        component: ReportComponent },
    { path: 'help',           component: HelpComponent },
    { path: 'notifications',  component: NotificationsComponent },
    { path: 'schedule',       component: ScheduleComponent }
];
