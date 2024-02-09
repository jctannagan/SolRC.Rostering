import { Component, OnInit } from '@angular/core';

declare const $: any;
declare interface RouteInfo {
    path: string;
    title: string;
    icon: string;
    class: string;
}
export const ROUTES: RouteInfo[] = [
    { path: '/dashboard', title: 'Dashboard',  icon: 'dashboard', class: '' },
    { path: '/employee', title: 'Employees',  icon:'person', class: '' },
    { path: '/schedule', title: 'Schedule',  icon:'content_paste', class: '' },
    { path: '/floor-plan', title: 'Floor Plans',  icon:'bubble_chart', class: '' },
    { path: '/reports', title: 'Reports',  icon:'library_books', class: '' },
    { path: '/help', title: 'Help',  icon:'help', class: 'active-pro' },
];

@Component({
  selector: 'app-sidebar',
  templateUrl: './sidebar.component.html',
  styleUrls: ['./sidebar.component.css']
})
export class SidebarComponent implements OnInit {
  menuItems: any[];

  constructor() { }

  ngOnInit() {
    this.menuItems = ROUTES.filter(menuItem => menuItem);
  }
  isMobileMenu() {
      if ($(window).width() > 991) {
          return false;
      }
      return true;
  };
}
