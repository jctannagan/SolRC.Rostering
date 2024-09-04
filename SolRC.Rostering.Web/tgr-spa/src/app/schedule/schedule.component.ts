import {Component, Injectable} from '@angular/core';
import {DateAdapter} from '@angular/material/core';
import {
  MatDateRangeSelectionStrategy,
  DateRange,
  MAT_DATE_RANGE_SELECTION_STRATEGY,
} from '@angular/material/datepicker';
import { ScheduleApiService } from 'app/services/schedule-api.service';


/** @title Basic date range picker */
@Component({
  selector: 'app-schedule',
  templateUrl: 'schedule.component.html',
  styleUrls: ['./schedule.component.css'],
  providers: [],
})
export class ScheduleComponent {
  /**
   *
   */
  constructor(private scheduleApiService: ScheduleApiService) {
    
  }

  public onGenerateSchedule() : void {
    this.scheduleApiService.generateSchedule()
    .subscribe(resp => this.downloadFile(resp, 'application/ms-excel'));
  }

  private downloadFile(data: any, type: string) {
    let blob = new Blob([data], { type: type});
    let anchor = document.createElement("a");
    const date = new Date();
    const month = ("0" + (date.getMonth() + 1)).slice(-2);
    anchor.download = `Rostering-${month}${date.getFullYear()}.xlsx`;
    anchor.href = window.URL.createObjectURL(blob);
    anchor.click();
    // let pwa = window.open(url);
    // if (!pwa || pwa.closed || typeof pwa.closed == 'undefined') {
    //   alert( 'Please disable your Pop-up blocker and try again.');
    // }
  }
}
