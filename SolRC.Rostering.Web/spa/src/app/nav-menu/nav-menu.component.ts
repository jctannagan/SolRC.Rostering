import { Component } from '@angular/core';
import {CommonModule, NgClass} from "@angular/common";
import {RouterLink} from "@angular/router";

@Component({
  selector: 'app-nav-menu',
  standalone: true,
  imports: [
    NgClass,
    RouterLink
  ],
  templateUrl: './nav-menu.component.html',
  styleUrl: './nav-menu.component.css'
})
export class NavMenuComponent {
  isExpanded = false;

  collapse() {
    this.isExpanded = false;
  }

  toggle() {
    this.isExpanded = !this.isExpanded;
  }
}
