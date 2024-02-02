import { Component } from '@angular/core';
import { ScheduleApiService } from '../services/schedule-api-service';

@Component({
  selector: 'app-home',
  standalone: true,
  imports: [],
  templateUrl: './home.component.html',
})
export class HomeComponent {
  constructor(private scheduleApiService: ScheduleApiService) { }

  public onGenerateSchedule(): void {
    //this.scheduleApiService.generateSchedule().subscribe({
    //  next: () => console.log("next"),
    //  error: (e) => console.error(e),
    //  complete: () => console.log("complete"),
    //});

    this.scheduleApiService.generateSchedule()
      .subscribe(resp => this.downloadFile(resp, 'application/ms-excel'));
  }

  private downloadFile(data: any, type: string) {
    let blob = new Blob([data], { type: type});
    let anchor = document.createElement("a");
    anchor.download = "ScheduledRoster.xlsx";
    anchor.href = window.URL.createObjectURL(blob);
    anchor.click();
    // let pwa = window.open(url);
    // if (!pwa || pwa.closed || typeof pwa.closed == 'undefined') {
    //   alert( 'Please disable your Pop-up blocker and try again.');
    // }
  }
}
