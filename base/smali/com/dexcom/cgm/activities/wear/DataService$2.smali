.class Lcom/dexcom/cgm/activities/wear/DataService$2;
.super Ljava/lang/Object;
.source "DataService.java"

# interfaces
.implements Lcom/dexcom/cgm/h/c;


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/wear/DataService;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/wear/DataService;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/dexcom/cgm/activities/wear/DataService$2;->this$0:Lcom/dexcom/cgm/activities/wear/DataService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evCgmData(Lcom/dexcom/cgm/h/e;)V
    .locals 2

    .prologue
    .line 64
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/dexcom/cgm/activities/wear/DataService$2$1;

    invoke-direct {v1, p0}, Lcom/dexcom/cgm/activities/wear/DataService$2$1;-><init>(Lcom/dexcom/cgm/activities/wear/DataService$2;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 70
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 71
    return-void
.end method
