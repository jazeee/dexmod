.class Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity$2;
.super Ljava/lang/Object;
.source "AlertScheduleSetupWizardActivity.java"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity;)V
    .locals 0

    .prologue
    .line 347
    iput-object p1, p0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity$2;->this$0:Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 6

    .prologue
    .line 351
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    int-to-long v4, p3

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 353
    new-instance v2, Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;

    iget-object v3, p0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity$2;->this$0:Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity;

    invoke-static {v3}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity;->access$000(Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity;)Lcom/dexcom/cgm/model/DexAlertSchedule;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;-><init>(Lcom/dexcom/cgm/model/DexAlertSchedule;)V

    .line 354
    invoke-virtual {v2, v0, v1}, Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;->setStartTime(J)Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;

    .line 355
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity$2;->this$0:Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity;

    invoke-virtual {v2}, Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;->build()Lcom/dexcom/cgm/model/DexAlertSchedule;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity;->access$002(Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity;Lcom/dexcom/cgm/model/DexAlertSchedule;)Lcom/dexcom/cgm/model/DexAlertSchedule;

    .line 357
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity$2;->this$0:Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity;->access$100(Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity;)V

    .line 358
    return-void
.end method
