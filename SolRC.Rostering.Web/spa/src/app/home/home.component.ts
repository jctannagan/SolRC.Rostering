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

    this.scheduleApiService.generateSchedule().subscribe(blob => {
      const url = window.URL.createObjectURL(blob);
      const anchor = document.createElement('a');
      anchor.download = 'yourfile.xlsx';
      anchor.href = url;
      anchor.click();
      window.URL.revokeObjectURL(url);
    });
  }
}
