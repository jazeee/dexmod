.class public Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;
.super Landroid/app/Activity;
.source "EventEntryActivity.java"


# instance fields
.field private final CARBS_REQUEST_CODE:I

.field private final EMPTY_STRING:Ljava/lang/String;

.field private final EXERCISE_REQUEST_CODE:I

.field private final HEALTH_REQUEST_CODE:I

.field private final INSULIN_REQUEST_CODE:I

.field private carbsLongClickPressed:Z

.field private datePickerListener:Landroid/app/DatePickerDialog$OnDateSetListener;

.field private exerciseLongClickPressed:Z

.field private healthLongClickPressed:Z

.field private insulinLongClickPressed:Z

.field private m_carbsEntry:Ljava/lang/String;

.field private m_carbsEvent:Lcom/dexcom/cgm/activities/event_entry/DexListEventView;

.field private m_carbsUserEvent:Lcom/dexcom/cgm/i/a/d;

.field private m_carbsValue:I

.field private m_dateHasBeenSet:Z

.field private m_eventDateTime:Lcom/dexcom/cgm/k/j;

.field private m_eventIntent:Landroid/content/Intent;

.field private m_exerciseDuration:I

.field private m_exerciseEvent:Lcom/dexcom/cgm/activities/event_entry/DexListEventView;

.field private m_exerciseIntensity:Lcom/dexcom/cgm/i/a/a/b;

.field private m_exerciseIntensityText:Ljava/lang/String;

.field private m_exerciseUserEvent:Lcom/dexcom/cgm/i/a/d;

.field private m_healthEvent:Lcom/dexcom/cgm/activities/event_entry/DexListEventView;

.field private m_healthIssue:Lcom/dexcom/cgm/i/a/a/b;

.field private m_healthIssueText:Ljava/lang/String;

.field private m_healthUserEvent:Lcom/dexcom/cgm/i/a/d;

.field private m_insulinEntry:Ljava/lang/String;

.field private m_insulinEvent:Lcom/dexcom/cgm/activities/event_entry/DexListEventView;

.field private m_insulinUserEvent:Lcom/dexcom/cgm/i/a/d;

.field private m_insulinValue:D

.field private m_intensityId:I

.field private m_issueId:I

.field private timePickerListener:Landroid/app/TimePickerDialog$OnTimeSetListener;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 40
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->EMPTY_STRING:Ljava/lang/String;

    .line 43
    iput v2, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->CARBS_REQUEST_CODE:I

    .line 44
    const/4 v0, 0x1

    iput v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->INSULIN_REQUEST_CODE:I

    .line 45
    const/4 v0, 0x2

    iput v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->EXERCISE_REQUEST_CODE:I

    .line 46
    const/4 v0, 0x3

    iput v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->HEALTH_REQUEST_CODE:I

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_carbsEntry:Ljava/lang/String;

    .line 51
    iput v3, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_carbsValue:I

    .line 52
    iput-boolean v2, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->carbsLongClickPressed:Z

    .line 56
    const-string v0, ""

    iput-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_insulinEntry:Ljava/lang/String;

    .line 57
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_insulinValue:D

    .line 58
    iput-boolean v2, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->insulinLongClickPressed:Z

    .line 63
    const-string v0, ""

    iput-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_exerciseIntensityText:Ljava/lang/String;

    .line 64
    iput v3, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_exerciseDuration:I

    .line 65
    iput v3, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_intensityId:I

    .line 66
    iput-boolean v2, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->exerciseLongClickPressed:Z

    .line 71
    const-string v0, ""

    iput-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_healthIssueText:Ljava/lang/String;

    .line 72
    iput v3, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_issueId:I

    .line 73
    iput-boolean v2, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->healthLongClickPressed:Z

    .line 600
    new-instance v0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity$5;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity$5;-><init>(Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;)V

    iput-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->datePickerListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    .line 641
    new-instance v0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity$6;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity$6;-><init>(Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;)V

    iput-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->timePickerListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

    return-void
.end method

.method static synthetic access$002(Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;Z)Z
    .locals 0

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->carbsLongClickPressed:Z

    return p1
.end method

.method static synthetic access$1000(Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;)Lcom/dexcom/cgm/i/a/d;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_insulinUserEvent:Lcom/dexcom/cgm/i/a/d;

    return-object v0
.end method

.method static synthetic access$102(Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;Z)Z
    .locals 0

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->insulinLongClickPressed:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;)Lcom/dexcom/cgm/i/a/d;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_exerciseUserEvent:Lcom/dexcom/cgm/i/a/d;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;)Lcom/dexcom/cgm/i/a/d;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_healthUserEvent:Lcom/dexcom/cgm/i/a/d;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;)I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_carbsValue:I

    return v0
.end method

.method static synthetic access$1400(Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_carbsEntry:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;)D
    .locals 2

    .prologue
    .line 40
    iget-wide v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_insulinValue:D

    return-wide v0
.end method

.method static synthetic access$1600(Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_insulinEntry:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;)I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_intensityId:I

    return v0
.end method

.method static synthetic access$1800(Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_exerciseIntensityText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;)I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_issueId:I

    return v0
.end method

.method static synthetic access$2000(Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_healthIssueText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;Z)Z
    .locals 0

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->exerciseLongClickPressed:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;Lcom/dexcom/cgm/k/j;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->formattedDateTimeString(Lcom/dexcom/cgm/k/j;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$302(Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;Z)Z
    .locals 0

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->healthLongClickPressed:Z

    return p1
.end method

.method static synthetic access$400(Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;)Lcom/dexcom/cgm/k/j;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_eventDateTime:Lcom/dexcom/cgm/k/j;

    return-object v0
.end method

.method static synthetic access$402(Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;Lcom/dexcom/cgm/k/j;)Lcom/dexcom/cgm/k/j;
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_eventDateTime:Lcom/dexcom/cgm/k/j;

    return-object p1
.end method

.method static synthetic access$500(Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->selectEventTime()V

    return-void
.end method

.method static synthetic access$600(Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;Lcom/dexcom/cgm/k/j;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->setEventDisplayTime(Lcom/dexcom/cgm/k/j;)V

    return-void
.end method

.method static synthetic access$700(Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;)Z
    .locals 1

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_dateHasBeenSet:Z

    return v0
.end method

.method static synthetic access$702(Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;Z)Z
    .locals 0

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_dateHasBeenSet:Z

    return p1
.end method

.method static synthetic access$800(Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;)Lcom/dexcom/cgm/i/a/d;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_carbsUserEvent:Lcom/dexcom/cgm/i/a/d;

    return-object v0
.end method

.method static synthetic access$900(Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;Lcom/dexcom/cgm/i/a;Lcom/dexcom/cgm/i/a/d;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->saveEventToDatabase(Lcom/dexcom/cgm/i/a;Lcom/dexcom/cgm/i/a/d;)V

    return-void
.end method

.method private clearEventValues()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 394
    iput v3, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_carbsValue:I

    .line 395
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_insulinValue:D

    .line 396
    iput v3, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_intensityId:I

    .line 397
    iput v3, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_issueId:I

    .line 398
    sget-object v0, Lcom/dexcom/cgm/i/a/a/b;->EventSubTypeNone:Lcom/dexcom/cgm/i/a/a/b;

    iput-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_exerciseIntensity:Lcom/dexcom/cgm/i/a/a/b;

    .line 399
    sget-object v0, Lcom/dexcom/cgm/i/a/a/b;->EventSubTypeNone:Lcom/dexcom/cgm/i/a/a/b;

    iput-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_healthIssue:Lcom/dexcom/cgm/i/a/a/b;

    .line 400
    iput-object v2, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_eventDateTime:Lcom/dexcom/cgm/k/j;

    .line 401
    iput-object v2, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_carbsUserEvent:Lcom/dexcom/cgm/i/a/d;

    .line 402
    iput-object v2, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_insulinUserEvent:Lcom/dexcom/cgm/i/a/d;

    .line 403
    iput-object v2, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_exerciseUserEvent:Lcom/dexcom/cgm/i/a/d;

    .line 404
    iput-object v2, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_healthUserEvent:Lcom/dexcom/cgm/i/a/d;

    .line 405
    return-void
.end method

.method private createUserEvent(Lcom/dexcom/cgm/i/a/a/c;Lcom/dexcom/cgm/i/a/a/b;Lcom/dexcom/cgm/k/j;I)Lcom/dexcom/cgm/i/a/d;
    .locals 1

    .prologue
    .line 368
    new-instance v0, Lcom/dexcom/cgm/i/a/d;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/dexcom/cgm/i/a/d;-><init>(Lcom/dexcom/cgm/i/a/a/c;Lcom/dexcom/cgm/i/a/a/b;Lcom/dexcom/cgm/k/j;I)V

    return-object v0
.end method

.method private formattedDateTimeString(Lcom/dexcom/cgm/k/j;)Ljava/lang/String;
    .locals 6

    .prologue
    const-wide/16 v4, 0x3e8

    .line 381
    .line 382
    invoke-virtual {p1}, Lcom/dexcom/cgm/k/j;->getTimeInSeconds()J

    move-result-wide v0

    mul-long/2addr v0, v4

    const/16 v2, 0x8

    .line 381
    invoke-static {p0, v0, v1, v2}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    .line 386
    new-instance v1, Lorg/joda/time/LocalDateTime;

    invoke-virtual {p1}, Lcom/dexcom/cgm/k/j;->getTimeInSeconds()J

    move-result-wide v2

    mul-long/2addr v2, v4

    invoke-direct {v1, v2, v3}, Lorg/joda/time/LocalDateTime;-><init>(J)V

    .line 387
    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    invoke-virtual {v1}, Lorg/joda/time/LocalDateTime;->toDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 389
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private loadActivity(I)V
    .locals 1

    .prologue
    .line 673
    iget-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_eventIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0, p1}, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 674
    return-void
.end method

.method private saveEventToDatabase(Lcom/dexcom/cgm/i/a;Lcom/dexcom/cgm/i/a/d;)V
    .locals 2

    .prologue
    .line 819
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$string;->flurry_evt_EventLogged_User:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/flurry/android/a;->logEvent(Ljava/lang/String;)Lcom/flurry/android/e;

    .line 820
    invoke-interface {p1, p2}, Lcom/dexcom/cgm/i/a;->setUserEvent(Lcom/dexcom/cgm/i/a/d;)V

    .line 821
    return-void
.end method

.method private selectEventDate()V
    .locals 8

    .prologue
    const/16 v7, 0x3b

    .line 587
    invoke-static {}, Lorg/joda/time/DateTime;->now()Lorg/joda/time/DateTime;

    move-result-object v6

    .line 588
    invoke-virtual {v6}, Lorg/joda/time/DateTime;->getMonthOfYear()I

    move-result v0

    add-int/lit8 v4, v0, -0x1

    .line 589
    new-instance v0, Landroid/app/DatePickerDialog;

    iget-object v2, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->datePickerListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    .line 591
    invoke-virtual {v6}, Lorg/joda/time/DateTime;->getYear()I

    move-result v3

    .line 593
    invoke-virtual {v6}, Lorg/joda/time/DateTime;->getDayOfMonth()I

    move-result v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 595
    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v6, v2}, Lorg/joda/time/DateTime;->minusMonths(I)Lorg/joda/time/DateTime;

    move-result-object v2

    invoke-virtual {v2}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/widget/DatePicker;->setMinDate(J)V

    .line 596
    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v1

    const/16 v2, 0x17

    invoke-virtual {v6, v2}, Lorg/joda/time/DateTime;->withHourOfDay(I)Lorg/joda/time/DateTime;

    move-result-object v2

    invoke-virtual {v2, v7}, Lorg/joda/time/DateTime;->withMinuteOfHour(I)Lorg/joda/time/DateTime;

    move-result-object v2

    invoke-virtual {v2, v7}, Lorg/joda/time/DateTime;->withSecondOfMinute(I)Lorg/joda/time/DateTime;

    move-result-object v2

    invoke-virtual {v2}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/widget/DatePicker;->setMaxDate(J)V

    .line 597
    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->show()V

    .line 598
    return-void
.end method

.method private selectEventTime()V
    .locals 6

    .prologue
    .line 631
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v5

    .line 632
    invoke-static {}, Lorg/joda/time/DateTime;->now()Lorg/joda/time/DateTime;

    move-result-object v1

    .line 633
    new-instance v0, Landroid/app/TimePickerDialog;

    iget-object v2, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->timePickerListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

    .line 635
    invoke-virtual {v1}, Lorg/joda/time/DateTime;->getHourOfDay()I

    move-result v3

    .line 636
    invoke-virtual {v1}, Lorg/joda/time/DateTime;->getMinuteOfHour()I

    move-result v4

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    .line 638
    invoke-virtual {v0}, Landroid/app/TimePickerDialog;->show()V

    .line 639
    return-void
.end method

.method private setCarbsEventValues()V
    .locals 4

    .prologue
    .line 158
    iget v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_carbsValue:I

    if-ltz v0, :cond_2

    .line 160
    iget v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_carbsValue:I

    if-nez v0, :cond_0

    .line 162
    const-string v0, ""

    iput-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_carbsEntry:Ljava/lang/String;

    .line 173
    :goto_0
    iget-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_carbsEvent:Lcom/dexcom/cgm/activities/event_entry/DexListEventView;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_carbsEntry:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/event_entry/DexListEventView;->setEventEntryText(Ljava/lang/String;)V

    .line 174
    sget-object v0, Lcom/dexcom/cgm/i/a/a/c;->Carbs:Lcom/dexcom/cgm/i/a/a/c;

    sget-object v1, Lcom/dexcom/cgm/i/a/a/b;->EventSubTypeNone:Lcom/dexcom/cgm/i/a/a/b;

    iget-object v2, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_eventDateTime:Lcom/dexcom/cgm/k/j;

    iget v3, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_carbsValue:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->createUserEvent(Lcom/dexcom/cgm/i/a/a/c;Lcom/dexcom/cgm/i/a/a/b;Lcom/dexcom/cgm/k/j;I)Lcom/dexcom/cgm/i/a/d;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_carbsUserEvent:Lcom/dexcom/cgm/i/a/d;

    .line 179
    iget-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_carbsEvent:Lcom/dexcom/cgm/activities/event_entry/DexListEventView;

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/event_entry/DexListEventView;->setChecked()V

    .line 180
    iget-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_carbsEvent:Lcom/dexcom/cgm/activities/event_entry/DexListEventView;

    sget v1, Lcom/dexcom/cgm/activities/R$id;->dex_event_check_box:I

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/event_entry/DexListEventView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 182
    sget v1, Lcom/dexcom/cgm/activities/R$string;->dex_event_entry_carbs_checked:I

    invoke-virtual {p0, v1}, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 193
    :goto_1
    return-void

    .line 164
    :cond_0
    iget v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_carbsValue:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_carbsValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$string;->dex_event_entry_carbs_gram:I

    invoke-virtual {p0, v1}, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_carbsEntry:Ljava/lang/String;

    goto :goto_0

    .line 170
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_carbsValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$string;->dex_event_entry_carbs_grams:I

    invoke-virtual {p0, v1}, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_carbsEntry:Ljava/lang/String;

    goto :goto_0

    .line 186
    :cond_2
    const-string v0, ""

    iput-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_carbsEntry:Ljava/lang/String;

    .line 187
    iget-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_carbsEvent:Lcom/dexcom/cgm/activities/event_entry/DexListEventView;

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/event_entry/DexListEventView;->setUnchecked()V

    .line 188
    iget-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_carbsEvent:Lcom/dexcom/cgm/activities/event_entry/DexListEventView;

    sget v1, Lcom/dexcom/cgm/activities/R$id;->dex_event_check_box:I

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/event_entry/DexListEventView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 190
    sget v1, Lcom/dexcom/cgm/activities/R$string;->dex_event_entry_carbs_unchecked:I

    invoke-virtual {p0, v1}, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private setEventDisplayTime(Lcom/dexcom/cgm/k/j;)V
    .locals 2

    .prologue
    .line 373
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->formattedDateTimeString(Lcom/dexcom/cgm/k/j;)Ljava/lang/String;

    move-result-object v1

    .line 374
    sget v0, Lcom/dexcom/cgm/activities/R$id;->event_time:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/activities/DexListNavView;

    .line 375
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexListNavView;->setEndText(Ljava/lang/String;)V

    .line 376
    return-void
.end method

.method private setEventValues()V
    .locals 0

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->setCarbsEventValues()V

    .line 151
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->setInsulinEventValues()V

    .line 152
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->setExerciseEventValues()V

    .line 153
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->setHealthEventValues()V

    .line 154
    return-void
.end method

.method private setExerciseEventValues()V
    .locals 4

    .prologue
    .line 245
    iget v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_intensityId:I

    if-ltz v0, :cond_4

    .line 247
    iget v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_intensityId:I

    if-nez v0, :cond_1

    .line 249
    sget-object v0, Lcom/dexcom/cgm/i/a/a/b;->EventSubTypeNone:Lcom/dexcom/cgm/i/a/a/b;

    iput-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_exerciseIntensity:Lcom/dexcom/cgm/i/a/a/b;

    .line 250
    const-string v0, ""

    iput-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_exerciseIntensityText:Ljava/lang/String;

    .line 271
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_exerciseEvent:Lcom/dexcom/cgm/activities/event_entry/DexListEventView;

    sget v1, Lcom/dexcom/cgm/activities/R$id;->dex_event_entry_text:I

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/event_entry/DexListEventView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 273
    iget-object v1, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_exerciseIntensityText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 275
    sget-object v0, Lcom/dexcom/cgm/i/a/a/c;->Exercise:Lcom/dexcom/cgm/i/a/a/c;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_exerciseIntensity:Lcom/dexcom/cgm/i/a/a/b;

    iget-object v2, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_eventDateTime:Lcom/dexcom/cgm/k/j;

    iget v3, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_exerciseDuration:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->createUserEvent(Lcom/dexcom/cgm/i/a/a/c;Lcom/dexcom/cgm/i/a/a/b;Lcom/dexcom/cgm/k/j;I)Lcom/dexcom/cgm/i/a/d;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_exerciseUserEvent:Lcom/dexcom/cgm/i/a/d;

    .line 279
    iget-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_exerciseEvent:Lcom/dexcom/cgm/activities/event_entry/DexListEventView;

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/event_entry/DexListEventView;->setChecked()V

    .line 280
    iget-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_exerciseEvent:Lcom/dexcom/cgm/activities/event_entry/DexListEventView;

    sget v1, Lcom/dexcom/cgm/activities/R$id;->dex_event_check_box:I

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/event_entry/DexListEventView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 282
    sget v1, Lcom/dexcom/cgm/activities/R$string;->dex_event_entry_exercise_checked:I

    invoke-virtual {p0, v1}, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 294
    :goto_1
    return-void

    .line 252
    :cond_1
    iget v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_intensityId:I

    sget v1, Lcom/dexcom/cgm/activities/R$id;->exercise_intensity_light:I

    if-ne v0, v1, :cond_2

    .line 254
    sget-object v0, Lcom/dexcom/cgm/i/a/a/b;->ExerciseSubTypeLight:Lcom/dexcom/cgm/i/a/a/b;

    iput-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_exerciseIntensity:Lcom/dexcom/cgm/i/a/a/b;

    .line 255
    sget v0, Lcom/dexcom/cgm/activities/R$string;->dex_event_entry_exercise_intensity_light:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_exerciseIntensityText:Ljava/lang/String;

    goto :goto_0

    .line 258
    :cond_2
    iget v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_intensityId:I

    sget v1, Lcom/dexcom/cgm/activities/R$id;->exercise_intensity_medium:I

    if-ne v0, v1, :cond_3

    .line 260
    sget-object v0, Lcom/dexcom/cgm/i/a/a/b;->ExerciseSubTypeMedium:Lcom/dexcom/cgm/i/a/a/b;

    iput-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_exerciseIntensity:Lcom/dexcom/cgm/i/a/a/b;

    .line 261
    sget v0, Lcom/dexcom/cgm/activities/R$string;->dex_event_entry_exercise_intensity_medium:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_exerciseIntensityText:Ljava/lang/String;

    goto :goto_0

    .line 264
    :cond_3
    iget v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_intensityId:I

    sget v1, Lcom/dexcom/cgm/activities/R$id;->exercise_intensity_heavy:I

    if-ne v0, v1, :cond_0

    .line 266
    sget-object v0, Lcom/dexcom/cgm/i/a/a/b;->ExerciseSubTypeHeavy:Lcom/dexcom/cgm/i/a/a/b;

    iput-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_exerciseIntensity:Lcom/dexcom/cgm/i/a/a/b;

    .line 267
    sget v0, Lcom/dexcom/cgm/activities/R$string;->dex_event_entry_exercise_intensity_heavy:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_exerciseIntensityText:Ljava/lang/String;

    goto :goto_0

    .line 287
    :cond_4
    sget-object v0, Lcom/dexcom/cgm/i/a/a/b;->EventSubTypeNone:Lcom/dexcom/cgm/i/a/a/b;

    iput-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_exerciseIntensity:Lcom/dexcom/cgm/i/a/a/b;

    .line 288
    iget-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_exerciseEvent:Lcom/dexcom/cgm/activities/event_entry/DexListEventView;

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/event_entry/DexListEventView;->setUnchecked()V

    .line 289
    iget-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_exerciseEvent:Lcom/dexcom/cgm/activities/event_entry/DexListEventView;

    sget v1, Lcom/dexcom/cgm/activities/R$id;->dex_event_check_box:I

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/event_entry/DexListEventView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 291
    sget v1, Lcom/dexcom/cgm/activities/R$string;->dex_event_entry_exercise_unchecked:I

    invoke-virtual {p0, v1}, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private setHealthEventValues()V
    .locals 4

    .prologue
    .line 298
    iget v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_issueId:I

    if-ltz v0, :cond_7

    .line 300
    iget v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_issueId:I

    if-nez v0, :cond_1

    .line 302
    sget-object v0, Lcom/dexcom/cgm/i/a/a/b;->EventSubTypeNone:Lcom/dexcom/cgm/i/a/a/b;

    iput-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_healthIssue:Lcom/dexcom/cgm/i/a/a/b;

    .line 303
    const-string v0, ""

    iput-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_healthIssueText:Ljava/lang/String;

    .line 336
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_healthEvent:Lcom/dexcom/cgm/activities/event_entry/DexListEventView;

    sget v1, Lcom/dexcom/cgm/activities/R$id;->dex_event_entry_text:I

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/event_entry/DexListEventView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 338
    iget-object v1, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_healthIssueText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 340
    sget-object v0, Lcom/dexcom/cgm/i/a/a/c;->Health:Lcom/dexcom/cgm/i/a/a/c;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_healthIssue:Lcom/dexcom/cgm/i/a/a/b;

    iget-object v2, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_eventDateTime:Lcom/dexcom/cgm/k/j;

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->createUserEvent(Lcom/dexcom/cgm/i/a/a/c;Lcom/dexcom/cgm/i/a/a/b;Lcom/dexcom/cgm/k/j;I)Lcom/dexcom/cgm/i/a/d;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_healthUserEvent:Lcom/dexcom/cgm/i/a/d;

    .line 345
    iget-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_healthEvent:Lcom/dexcom/cgm/activities/event_entry/DexListEventView;

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/event_entry/DexListEventView;->setChecked()V

    .line 346
    iget-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_healthEvent:Lcom/dexcom/cgm/activities/event_entry/DexListEventView;

    sget v1, Lcom/dexcom/cgm/activities/R$id;->dex_event_check_box:I

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/event_entry/DexListEventView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 348
    sget v1, Lcom/dexcom/cgm/activities/R$string;->dex_event_entry_health_checked:I

    invoke-virtual {p0, v1}, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 360
    :goto_1
    return-void

    .line 305
    :cond_1
    iget v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_issueId:I

    sget v1, Lcom/dexcom/cgm/activities/R$id;->health_alcohol:I

    if-ne v0, v1, :cond_2

    .line 307
    sget-object v0, Lcom/dexcom/cgm/i/a/a/b;->HealthSubTypeAlcohol:Lcom/dexcom/cgm/i/a/a/b;

    iput-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_healthIssue:Lcom/dexcom/cgm/i/a/a/b;

    .line 308
    sget v0, Lcom/dexcom/cgm/activities/R$string;->dex_event_entry_health_alcohol:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_healthIssueText:Ljava/lang/String;

    goto :goto_0

    .line 310
    :cond_2
    iget v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_issueId:I

    sget v1, Lcom/dexcom/cgm/activities/R$id;->health_cycle:I

    if-ne v0, v1, :cond_3

    .line 312
    sget-object v0, Lcom/dexcom/cgm/i/a/a/b;->HealthSubTypeCycle:Lcom/dexcom/cgm/i/a/a/b;

    iput-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_healthIssue:Lcom/dexcom/cgm/i/a/a/b;

    .line 313
    sget v0, Lcom/dexcom/cgm/activities/R$string;->dex_event_entry_health_cycle:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_healthIssueText:Ljava/lang/String;

    goto :goto_0

    .line 315
    :cond_3
    iget v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_issueId:I

    sget v1, Lcom/dexcom/cgm/activities/R$id;->health_illness:I

    if-ne v0, v1, :cond_4

    .line 317
    sget-object v0, Lcom/dexcom/cgm/i/a/a/b;->HealthSubTypeIllness:Lcom/dexcom/cgm/i/a/a/b;

    iput-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_healthIssue:Lcom/dexcom/cgm/i/a/a/b;

    .line 318
    sget v0, Lcom/dexcom/cgm/activities/R$string;->dex_event_entry_health_illness:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_healthIssueText:Ljava/lang/String;

    goto :goto_0

    .line 320
    :cond_4
    iget v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_issueId:I

    sget v1, Lcom/dexcom/cgm/activities/R$id;->health_feel_low:I

    if-ne v0, v1, :cond_5

    .line 322
    sget-object v0, Lcom/dexcom/cgm/i/a/a/b;->HealthSubTypeLowSymptoms:Lcom/dexcom/cgm/i/a/a/b;

    iput-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_healthIssue:Lcom/dexcom/cgm/i/a/a/b;

    .line 323
    sget v0, Lcom/dexcom/cgm/activities/R$string;->dex_event_entry_health_feel_low:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_healthIssueText:Ljava/lang/String;

    goto :goto_0

    .line 325
    :cond_5
    iget v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_issueId:I

    sget v1, Lcom/dexcom/cgm/activities/R$id;->health_feel_high:I

    if-ne v0, v1, :cond_6

    .line 327
    sget-object v0, Lcom/dexcom/cgm/i/a/a/b;->HealthSubTypeHighSymptoms:Lcom/dexcom/cgm/i/a/a/b;

    iput-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_healthIssue:Lcom/dexcom/cgm/i/a/a/b;

    .line 328
    sget v0, Lcom/dexcom/cgm/activities/R$string;->dex_event_entry_health_feel_high:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_healthIssueText:Ljava/lang/String;

    goto/16 :goto_0

    .line 330
    :cond_6
    iget v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_issueId:I

    sget v1, Lcom/dexcom/cgm/activities/R$id;->health_stress:I

    if-ne v0, v1, :cond_0

    .line 332
    sget-object v0, Lcom/dexcom/cgm/i/a/a/b;->HealthSubTypeStress:Lcom/dexcom/cgm/i/a/a/b;

    iput-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_healthIssue:Lcom/dexcom/cgm/i/a/a/b;

    .line 333
    sget v0, Lcom/dexcom/cgm/activities/R$string;->dex_event_entry_health_stress:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_healthIssueText:Ljava/lang/String;

    goto/16 :goto_0

    .line 353
    :cond_7
    sget-object v0, Lcom/dexcom/cgm/i/a/a/b;->EventSubTypeNone:Lcom/dexcom/cgm/i/a/a/b;

    iput-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_healthIssue:Lcom/dexcom/cgm/i/a/a/b;

    .line 354
    iget-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_healthEvent:Lcom/dexcom/cgm/activities/event_entry/DexListEventView;

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/event_entry/DexListEventView;->setUnchecked()V

    .line 355
    iget-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_healthEvent:Lcom/dexcom/cgm/activities/event_entry/DexListEventView;

    sget v1, Lcom/dexcom/cgm/activities/R$id;->dex_event_check_box:I

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/event_entry/DexListEventView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 357
    sget v1, Lcom/dexcom/cgm/activities/R$string;->dex_event_entry_health_unchecked:I

    invoke-virtual {p0, v1}, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_1
.end method

.method private setInsulinEventValues()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 197
    iget-wide v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_insulinValue:D

    cmpl-double v0, v0, v6

    if-ltz v0, :cond_2

    .line 199
    const-string v0, "%.2f"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-wide v4, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_insulinValue:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 201
    iget-wide v2, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_insulinValue:D

    cmpl-double v1, v2, v6

    if-nez v1, :cond_0

    .line 203
    const-string v0, ""

    iput-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_insulinEntry:Ljava/lang/String;

    .line 215
    :goto_0
    iget-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_insulinEvent:Lcom/dexcom/cgm/activities/event_entry/DexListEventView;

    sget v1, Lcom/dexcom/cgm/activities/R$id;->dex_event_entry_text:I

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/event_entry/DexListEventView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 217
    iget-object v1, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_insulinEntry:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    sget-object v0, Lcom/dexcom/cgm/i/a/a/c;->Insulin:Lcom/dexcom/cgm/i/a/a/c;

    sget-object v1, Lcom/dexcom/cgm/i/a/a/b;->EventSubTypeNone:Lcom/dexcom/cgm/i/a/a/b;

    iget-object v2, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_eventDateTime:Lcom/dexcom/cgm/k/j;

    iget-wide v4, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_insulinValue:D

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double/2addr v4, v6

    double-to-int v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->createUserEvent(Lcom/dexcom/cgm/i/a/a/c;Lcom/dexcom/cgm/i/a/a/b;Lcom/dexcom/cgm/k/j;I)Lcom/dexcom/cgm/i/a/d;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_insulinUserEvent:Lcom/dexcom/cgm/i/a/d;

    .line 223
    iget-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_insulinEvent:Lcom/dexcom/cgm/activities/event_entry/DexListEventView;

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/event_entry/DexListEventView;->setChecked()V

    .line 224
    iget-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_insulinEvent:Lcom/dexcom/cgm/activities/event_entry/DexListEventView;

    sget v1, Lcom/dexcom/cgm/activities/R$id;->dex_event_check_box:I

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/event_entry/DexListEventView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 226
    sget v1, Lcom/dexcom/cgm/activities/R$string;->dex_event_entry_insulin_checked:I

    invoke-virtual {p0, v1}, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 241
    :goto_1
    return-void

    .line 205
    :cond_0
    iget-wide v2, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_insulinValue:D

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v1, v2, v4

    if-nez v1, :cond_1

    .line 207
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$string;->dex_event_entry_insulin_unit:I

    invoke-virtual {p0, v1}, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_insulinEntry:Ljava/lang/String;

    goto :goto_0

    .line 212
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$string;->dex_event_entry_insulin_units:I

    invoke-virtual {p0, v1}, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_insulinEntry:Ljava/lang/String;

    goto/16 :goto_0

    .line 232
    :cond_2
    const-string v0, ""

    iput-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_insulinEntry:Ljava/lang/String;

    .line 233
    iget-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_insulinEvent:Lcom/dexcom/cgm/activities/event_entry/DexListEventView;

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/event_entry/DexListEventView;->setUnchecked()V

    .line 235
    iget-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_insulinEvent:Lcom/dexcom/cgm/activities/event_entry/DexListEventView;

    sget v1, Lcom/dexcom/cgm/activities/R$id;->dex_event_check_box:I

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/event_entry/DexListEventView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 237
    sget v1, Lcom/dexcom/cgm/activities/R$string;->dex_event_entry_insulin_unchecked:I

    invoke-virtual {p0, v1}, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private verifyEventsEntry()V
    .locals 3

    .prologue
    .line 702
    new-instance v0, Lcom/dexcom/cgm/activities/DexDialogBuilder;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/activities/DexDialogBuilder;-><init>(Landroid/app/Activity;)V

    sget v1, Lcom/dexcom/cgm/activities/R$layout;->dialog_events_is_this_correct:I

    new-instance v2, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity$9;

    invoke-direct {v2, p0}, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity$9;-><init>(Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;)V

    .line 703
    invoke-virtual {v0, v1, v2}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setContentLayout(ILcom/dexcom/cgm/activities/DexDialogBuilder$OnCustomLayout;)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$string;->button_text_save:I

    .line 774
    invoke-virtual {p0, v1}, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity$8;

    invoke-direct {v2, p0}, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity$8;-><init>(Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$string;->button_text_cancel:I

    .line 806
    invoke-virtual {p0, v1}, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity$7;

    invoke-direct {v2, p0}, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity$7;-><init>(Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setNegativeButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$string;->main_screen_text_39:I

    .line 813
    invoke-virtual {p0, v1}, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setLoggingText(Ljava/lang/String;)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    .line 814
    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->show()Landroid/app/Dialog;

    .line 815
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    .line 853
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 854
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->clearEventValues()V

    .line 855
    new-instance v0, Lcom/dexcom/cgm/activities/notifications/PersistentNotificationBuilder;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/activities/notifications/PersistentNotificationBuilder;-><init>(Landroid/content/Context;)V

    .line 856
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 679
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 681
    packed-switch p1, :pswitch_data_0

    .line 698
    :cond_0
    :goto_0
    return-void

    .line 684
    :pswitch_0
    const-string v0, "carbValue"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_carbsValue:I

    goto :goto_0

    .line 687
    :pswitch_1
    const-string v0, "insulinValue"

    const-wide/16 v2, 0x0

    invoke-virtual {p3, v0, v2, v3}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_insulinValue:D

    goto :goto_0

    .line 690
    :pswitch_2
    const-string v0, "intensityId"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_intensityId:I

    .line 691
    const-string v0, "exerciseDuration"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_exerciseDuration:I

    goto :goto_0

    .line 694
    :pswitch_3
    const-string v0, "issueId"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_issueId:I

    goto :goto_0

    .line 681
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 846
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 847
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->finish()V

    .line 848
    return-void
.end method

.method public onClickCancel(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 825
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->onBackPressed()V

    .line 826
    return-void
.end method

.method public onClickCarbsCheckbox(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 410
    iget-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_carbsEvent:Lcom/dexcom/cgm/activities/event_entry/DexListEventView;

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/event_entry/DexListEventView;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 412
    const/4 v0, -0x1

    iput v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_carbsValue:I

    .line 413
    iget-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_carbsEvent:Lcom/dexcom/cgm/activities/event_entry/DexListEventView;

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/event_entry/DexListEventView;->setUnchecked()V

    .line 414
    iget-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_carbsEvent:Lcom/dexcom/cgm/activities/event_entry/DexListEventView;

    sget v1, Lcom/dexcom/cgm/activities/R$id;->dex_event_check_box:I

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/event_entry/DexListEventView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 416
    sget v1, Lcom/dexcom/cgm/activities/R$string;->dex_event_entry_carbs_unchecked:I

    invoke-virtual {p0, v1}, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 418
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_carbsUserEvent:Lcom/dexcom/cgm/i/a/d;

    .line 433
    :goto_0
    return-void

    .line 422
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_carbsValue:I

    .line 423
    iget-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_carbsEvent:Lcom/dexcom/cgm/activities/event_entry/DexListEventView;

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/event_entry/DexListEventView;->setChecked()V

    .line 424
    iget-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_carbsEvent:Lcom/dexcom/cgm/activities/event_entry/DexListEventView;

    sget v1, Lcom/dexcom/cgm/activities/R$id;->dex_event_check_box:I

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/event_entry/DexListEventView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 426
    sget v1, Lcom/dexcom/cgm/activities/R$string;->dex_event_entry_carbs_checked:I

    invoke-virtual {p0, v1}, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 427
    sget-object v0, Lcom/dexcom/cgm/i/a/a/c;->Carbs:Lcom/dexcom/cgm/i/a/a/c;

    sget-object v1, Lcom/dexcom/cgm/i/a/a/b;->EventSubTypeNone:Lcom/dexcom/cgm/i/a/a/b;

    iget-object v2, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_eventDateTime:Lcom/dexcom/cgm/k/j;

    iget v3, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_carbsValue:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->createUserEvent(Lcom/dexcom/cgm/i/a/a/c;Lcom/dexcom/cgm/i/a/a/b;Lcom/dexcom/cgm/k/j;I)Lcom/dexcom/cgm/i/a/d;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_carbsUserEvent:Lcom/dexcom/cgm/i/a/d;

    goto :goto_0
.end method

.method public onClickExerciseCheckbox(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 467
    iget-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_exerciseEvent:Lcom/dexcom/cgm/activities/event_entry/DexListEventView;

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/event_entry/DexListEventView;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 469
    const/4 v0, -0x1

    iput v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_intensityId:I

    .line 470
    iget-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_exerciseEvent:Lcom/dexcom/cgm/activities/event_entry/DexListEventView;

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/event_entry/DexListEventView;->setUnchecked()V

    .line 472
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_exerciseUserEvent:Lcom/dexcom/cgm/i/a/d;

    .line 473
    iget-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_exerciseEvent:Lcom/dexcom/cgm/activities/event_entry/DexListEventView;

    sget v1, Lcom/dexcom/cgm/activities/R$id;->dex_event_check_box:I

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/event_entry/DexListEventView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 475
    sget v1, Lcom/dexcom/cgm/activities/R$string;->dex_event_entry_exercise_unchecked:I

    invoke-virtual {p0, v1}, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 492
    :goto_0
    return-void

    .line 480
    :cond_0
    iput v3, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_intensityId:I

    .line 481
    iget-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_exerciseEvent:Lcom/dexcom/cgm/activities/event_entry/DexListEventView;

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/event_entry/DexListEventView;->setChecked()V

    .line 482
    sget-object v0, Lcom/dexcom/cgm/i/a/a/c;->Exercise:Lcom/dexcom/cgm/i/a/a/c;

    sget-object v1, Lcom/dexcom/cgm/i/a/a/b;->EventSubTypeNone:Lcom/dexcom/cgm/i/a/a/b;

    iget-object v2, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_eventDateTime:Lcom/dexcom/cgm/k/j;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->createUserEvent(Lcom/dexcom/cgm/i/a/a/c;Lcom/dexcom/cgm/i/a/a/b;Lcom/dexcom/cgm/k/j;I)Lcom/dexcom/cgm/i/a/d;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_exerciseUserEvent:Lcom/dexcom/cgm/i/a/d;

    .line 487
    iget-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_exerciseEvent:Lcom/dexcom/cgm/activities/event_entry/DexListEventView;

    sget v1, Lcom/dexcom/cgm/activities/R$id;->dex_event_check_box:I

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/event_entry/DexListEventView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 489
    sget v1, Lcom/dexcom/cgm/activities/R$string;->dex_event_entry_exercise_checked:I

    invoke-virtual {p0, v1}, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onClickHealthCheckbox(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 497
    iget-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_healthEvent:Lcom/dexcom/cgm/activities/event_entry/DexListEventView;

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/event_entry/DexListEventView;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 499
    const/4 v0, -0x1

    iput v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_issueId:I

    .line 500
    iget-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_healthEvent:Lcom/dexcom/cgm/activities/event_entry/DexListEventView;

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/event_entry/DexListEventView;->setUnchecked()V

    .line 501
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_healthUserEvent:Lcom/dexcom/cgm/i/a/d;

    .line 502
    iget-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_healthEvent:Lcom/dexcom/cgm/activities/event_entry/DexListEventView;

    sget v1, Lcom/dexcom/cgm/activities/R$id;->dex_event_check_box:I

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/event_entry/DexListEventView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 504
    sget v1, Lcom/dexcom/cgm/activities/R$string;->dex_event_entry_health_unchecked:I

    invoke-virtual {p0, v1}, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 521
    :goto_0
    return-void

    .line 509
    :cond_0
    iput v3, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_issueId:I

    .line 510
    iget-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_healthEvent:Lcom/dexcom/cgm/activities/event_entry/DexListEventView;

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/event_entry/DexListEventView;->setChecked()V

    .line 511
    sget-object v0, Lcom/dexcom/cgm/i/a/a/c;->Health:Lcom/dexcom/cgm/i/a/a/c;

    sget-object v1, Lcom/dexcom/cgm/i/a/a/b;->EventSubTypeNone:Lcom/dexcom/cgm/i/a/a/b;

    iget-object v2, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_eventDateTime:Lcom/dexcom/cgm/k/j;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->createUserEvent(Lcom/dexcom/cgm/i/a/a/c;Lcom/dexcom/cgm/i/a/a/b;Lcom/dexcom/cgm/k/j;I)Lcom/dexcom/cgm/i/a/d;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_healthUserEvent:Lcom/dexcom/cgm/i/a/d;

    .line 516
    iget-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_healthEvent:Lcom/dexcom/cgm/activities/event_entry/DexListEventView;

    sget v1, Lcom/dexcom/cgm/activities/R$id;->dex_event_check_box:I

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/event_entry/DexListEventView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 518
    sget v1, Lcom/dexcom/cgm/activities/R$string;->dex_event_entry_health_checked:I

    invoke-virtual {p0, v1}, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onClickInsulinCheckbox(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 438
    iget-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_insulinEvent:Lcom/dexcom/cgm/activities/event_entry/DexListEventView;

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/event_entry/DexListEventView;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 440
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_insulinValue:D

    .line 441
    iget-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_insulinEvent:Lcom/dexcom/cgm/activities/event_entry/DexListEventView;

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/event_entry/DexListEventView;->setUnchecked()V

    .line 442
    iget-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_insulinEvent:Lcom/dexcom/cgm/activities/event_entry/DexListEventView;

    sget v1, Lcom/dexcom/cgm/activities/R$id;->dex_event_check_box:I

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/event_entry/DexListEventView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 444
    sget v1, Lcom/dexcom/cgm/activities/R$string;->dex_event_entry_insulin_unchecked:I

    invoke-virtual {p0, v1}, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 446
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_insulinUserEvent:Lcom/dexcom/cgm/i/a/d;

    .line 462
    :goto_0
    return-void

    .line 450
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_insulinValue:D

    .line 451
    iget-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_insulinEvent:Lcom/dexcom/cgm/activities/event_entry/DexListEventView;

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/event_entry/DexListEventView;->setChecked()V

    .line 452
    sget-object v0, Lcom/dexcom/cgm/i/a/a/c;->Insulin:Lcom/dexcom/cgm/i/a/a/c;

    sget-object v1, Lcom/dexcom/cgm/i/a/a/b;->EventSubTypeNone:Lcom/dexcom/cgm/i/a/a/b;

    iget-object v2, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_eventDateTime:Lcom/dexcom/cgm/k/j;

    iget-wide v4, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_insulinValue:D

    double-to-int v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->createUserEvent(Lcom/dexcom/cgm/i/a/a/c;Lcom/dexcom/cgm/i/a/a/b;Lcom/dexcom/cgm/k/j;I)Lcom/dexcom/cgm/i/a/d;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_insulinUserEvent:Lcom/dexcom/cgm/i/a/d;

    .line 457
    iget-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_insulinEvent:Lcom/dexcom/cgm/activities/event_entry/DexListEventView;

    sget v1, Lcom/dexcom/cgm/activities/R$id;->dex_event_check_box:I

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/event_entry/DexListEventView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 459
    sget v1, Lcom/dexcom/cgm/activities/R$string;->dex_event_entry_insulin_checked:I

    invoke-virtual {p0, v1}, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onClickNavigate(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 525
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 526
    sget v1, Lcom/dexcom/cgm/activities/R$id;->carbs_entry:I

    if-ne v0, v1, :cond_2

    .line 528
    iget-boolean v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->carbsLongClickPressed:Z

    if-nez v0, :cond_1

    .line 530
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dexcom/cgm/activities/event_entry/CarbsEntryActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_eventIntent:Landroid/content/Intent;

    .line 531
    iget-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_eventIntent:Landroid/content/Intent;

    const-string v1, "carbsValue"

    iget v2, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_carbsValue:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 532
    invoke-direct {p0, v3}, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->loadActivity(I)V

    .line 583
    :cond_0
    :goto_0
    return-void

    .line 536
    :cond_1
    iput-boolean v3, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->carbsLongClickPressed:Z

    goto :goto_0

    .line 539
    :cond_2
    sget v1, Lcom/dexcom/cgm/activities/R$id;->insulin_entry:I

    if-ne v0, v1, :cond_4

    .line 541
    iget-boolean v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->insulinLongClickPressed:Z

    if-nez v0, :cond_3

    .line 543
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dexcom/cgm/activities/event_entry/InsulinEntryActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_eventIntent:Landroid/content/Intent;

    .line 544
    iget-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_eventIntent:Landroid/content/Intent;

    const-string v1, "insulinValue"

    iget-wide v2, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_insulinValue:D

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 545
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->loadActivity(I)V

    goto :goto_0

    .line 549
    :cond_3
    iput-boolean v3, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->insulinLongClickPressed:Z

    goto :goto_0

    .line 552
    :cond_4
    sget v1, Lcom/dexcom/cgm/activities/R$id;->exercise_entry:I

    if-ne v0, v1, :cond_6

    .line 554
    iget-boolean v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->exerciseLongClickPressed:Z

    if-nez v0, :cond_5

    .line 556
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dexcom/cgm/activities/event_entry/ExerciseEntryActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_eventIntent:Landroid/content/Intent;

    .line 557
    iget-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_eventIntent:Landroid/content/Intent;

    const-string v1, "intensityId"

    iget v2, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_intensityId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 558
    iget-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_eventIntent:Landroid/content/Intent;

    const-string v1, "exerciseDuration"

    iget v2, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_exerciseDuration:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 559
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->loadActivity(I)V

    goto :goto_0

    .line 563
    :cond_5
    iput-boolean v3, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->exerciseLongClickPressed:Z

    goto :goto_0

    .line 566
    :cond_6
    sget v1, Lcom/dexcom/cgm/activities/R$id;->health_entry:I

    if-ne v0, v1, :cond_8

    .line 568
    iget-boolean v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->healthLongClickPressed:Z

    if-nez v0, :cond_7

    .line 570
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dexcom/cgm/activities/event_entry/HealthEntryActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_eventIntent:Landroid/content/Intent;

    .line 571
    iget-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_eventIntent:Landroid/content/Intent;

    const-string v1, "issueId"

    iget v2, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_issueId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 572
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->loadActivity(I)V

    goto :goto_0

    .line 576
    :cond_7
    iput-boolean v3, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->healthLongClickPressed:Z

    goto :goto_0

    .line 579
    :cond_8
    sget v1, Lcom/dexcom/cgm/activities/R$id;->event_time:I

    if-ne v0, v1, :cond_0

    .line 581
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->selectEventDate()V

    goto :goto_0
.end method

.method public onClickSave(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 830
    iget v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_carbsValue:I

    if-gez v0, :cond_0

    iget-wide v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_insulinValue:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-gez v0, :cond_0

    iget v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_intensityId:I

    if-gez v0, :cond_0

    iget v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_issueId:I

    if-ltz v0, :cond_1

    .line 835
    :cond_0
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->verifyEventsEntry()V

    .line 841
    :goto_0
    return-void

    .line 839
    :cond_1
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 82
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 83
    sget v0, Lcom/dexcom/cgm/activities/R$layout;->activity_event_entry:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->setContentView(I)V

    .line 85
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->clearEventValues()V

    .line 86
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 91
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 93
    sget v0, Lcom/dexcom/cgm/activities/R$id;->carbs_entry:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/activities/event_entry/DexListEventView;

    iput-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_carbsEvent:Lcom/dexcom/cgm/activities/event_entry/DexListEventView;

    .line 94
    iget-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_carbsEvent:Lcom/dexcom/cgm/activities/event_entry/DexListEventView;

    new-instance v1, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity$1;

    invoke-direct {v1, p0}, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity$1;-><init>(Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;)V

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/event_entry/DexListEventView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 105
    sget v0, Lcom/dexcom/cgm/activities/R$id;->insulin_entry:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/activities/event_entry/DexListEventView;

    iput-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_insulinEvent:Lcom/dexcom/cgm/activities/event_entry/DexListEventView;

    .line 106
    iget-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_insulinEvent:Lcom/dexcom/cgm/activities/event_entry/DexListEventView;

    new-instance v1, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity$2;

    invoke-direct {v1, p0}, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity$2;-><init>(Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;)V

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/event_entry/DexListEventView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 117
    sget v0, Lcom/dexcom/cgm/activities/R$id;->exercise_entry:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/activities/event_entry/DexListEventView;

    iput-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_exerciseEvent:Lcom/dexcom/cgm/activities/event_entry/DexListEventView;

    .line 118
    iget-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_exerciseEvent:Lcom/dexcom/cgm/activities/event_entry/DexListEventView;

    new-instance v1, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity$3;

    invoke-direct {v1, p0}, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity$3;-><init>(Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;)V

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/event_entry/DexListEventView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 129
    sget v0, Lcom/dexcom/cgm/activities/R$id;->health_entry:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/activities/event_entry/DexListEventView;

    iput-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_healthEvent:Lcom/dexcom/cgm/activities/event_entry/DexListEventView;

    .line 130
    iget-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_healthEvent:Lcom/dexcom/cgm/activities/event_entry/DexListEventView;

    new-instance v1, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity$4;

    invoke-direct {v1, p0}, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity$4;-><init>(Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;)V

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/event_entry/DexListEventView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 141
    iget-boolean v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_dateHasBeenSet:Z

    if-nez v0, :cond_0

    .line 143
    invoke-static {}, Lcom/dexcom/cgm/k/j;->getCurrentSystemTime()Lcom/dexcom/cgm/k/j;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->m_eventDateTime:Lcom/dexcom/cgm/k/j;

    .line 145
    :cond_0
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->setEventValues()V

    .line 146
    return-void
.end method
