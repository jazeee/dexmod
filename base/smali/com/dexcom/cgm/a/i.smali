.class final Lcom/dexcom/cgm/a/i;
.super Ljava/lang/Object;
.source "AlertSystemComponent.java"

# interfaces
.implements Lcom/dexcom/cgm/b/g;


# instance fields
.field private synthetic a:Lcom/dexcom/cgm/a/h;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/a/h;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/dexcom/cgm/a/i;->a:Lcom/dexcom/cgm/a/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final evAlertSettingsData(Lcom/dexcom/cgm/b/s;)V
    .locals 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/dexcom/cgm/a/i;->a:Lcom/dexcom/cgm/a/h;

    invoke-virtual {p1}, Lcom/dexcom/cgm/b/s;->getUserAlertProperties()Lcom/dexcom/cgm/model/UserAlertProperties;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dexcom/cgm/a/h;->access$000(Lcom/dexcom/cgm/a/h;Lcom/dexcom/cgm/model/UserAlertProperties;)V

    .line 38
    return-void
.end method
