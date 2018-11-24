.class Lcom/dexcom/cgm/share/ShareServiceComponent$3;
.super Ljava/lang/Object;
.source "ShareServiceComponent.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/share/ShareServiceComponent;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/share/ShareServiceComponent;)V
    .locals 0

    .prologue
    .line 202
    iput-object p1, p0, Lcom/dexcom/cgm/share/ShareServiceComponent$3;->this$0:Lcom/dexcom/cgm/share/ShareServiceComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 206
    iget-object v0, p0, Lcom/dexcom/cgm/share/ShareServiceComponent$3;->this$0:Lcom/dexcom/cgm/share/ShareServiceComponent;

    invoke-static {v0}, Lcom/dexcom/cgm/share/ShareServiceComponent;->access$000(Lcom/dexcom/cgm/share/ShareServiceComponent;)Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValueHelper;

    move-result-object v0

    sget-object v1, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;->TrendMaxRange:Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValueHelper;->uploadNamedValue(Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;)V

    .line 207
    return-void
.end method
