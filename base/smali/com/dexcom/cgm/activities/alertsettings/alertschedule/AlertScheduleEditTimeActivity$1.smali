.class Lcom/dexcom/cgm/activities/alertsettings/alertschedule/AlertScheduleEditTimeActivity$1;
.super Ljava/lang/Object;
.source "AlertScheduleEditTimeActivity.java"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/alertsettings/alertschedule/AlertScheduleEditTimeActivity;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/alertsettings/alertschedule/AlertScheduleEditTimeActivity;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/AlertScheduleEditTimeActivity$1;->this$0:Lcom/dexcom/cgm/activities/alertsettings/alertschedule/AlertScheduleEditTimeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 6

    .prologue
    .line 30
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    int-to-long v4, p3

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 32
    new-instance v2, Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;

    iget-object v3, p0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/AlertScheduleEditTimeActivity$1;->this$0:Lcom/dexcom/cgm/activities/alertsettings/alertschedule/AlertScheduleEditTimeActivity;

    invoke-virtual {v3}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/AlertScheduleEditTimeActivity;->getAlertSchedule()Lcom/dexcom/cgm/model/DexAlertSchedule;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;-><init>(Lcom/dexcom/cgm/model/DexAlertSchedule;)V

    .line 33
    invoke-virtual {v2, v0, v1}, Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;->setStartTime(J)Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;

    .line 34
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/AlertScheduleEditTimeActivity$1;->this$0:Lcom/dexcom/cgm/activities/alertsettings/alertschedule/AlertScheduleEditTimeActivity;

    invoke-virtual {v2}, Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;->build()Lcom/dexcom/cgm/model/DexAlertSchedule;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/AlertScheduleEditTimeActivity;->saveAlertSchedule(Lcom/dexcom/cgm/model/DexAlertSchedule;)V

    .line 36
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/AlertScheduleEditTimeActivity$1;->this$0:Lcom/dexcom/cgm/activities/alertsettings/alertschedule/AlertScheduleEditTimeActivity;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/AlertScheduleEditTimeActivity;->access$000(Lcom/dexcom/cgm/activities/alertsettings/alertschedule/AlertScheduleEditTimeActivity;)V

    .line 37
    return-void
.end method
