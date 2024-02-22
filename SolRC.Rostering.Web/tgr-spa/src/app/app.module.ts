import { BrowserAnimationsModule } from '@angular/platform-browser/animations';
import { NgModule } from '@angular/core';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { HttpClientModule } from '@angular/common/http';
import { RouterModule } from '@angular/router';
import { AppRoutingModule } from './app.routing';
import { ComponentsModule } from './components/components.module';
import { AppComponent } from './app.component';
import { AdminLayoutComponent } from './layouts/admin-layout/admin-layout.component';
import {MatNativeDateModule} from '@angular/material/core';
import {MatDatepickerModule} from '@angular/material/datepicker';
import {MaterialExampleModule} from './material.module';
import { ScheduleComponent } from './schedule/schedule.component';

@NgModule({
  imports: [
    BrowserAnimationsModule,
    FormsModule,
    ReactiveFormsModule,
    HttpClientModule,
    ComponentsModule,
    RouterModule,
    AppRoutingModule,
    MatNativeDateModule,
    MatDatepickerModule,
    MaterialExampleModule
  ],
  declarations: [
    AppComponent,
    AdminLayoutComponent,
    ScheduleComponent
  ],
  providers: [ScheduleComponent],
  bootstrap: [AppComponent]
})
export class AppModule { }
