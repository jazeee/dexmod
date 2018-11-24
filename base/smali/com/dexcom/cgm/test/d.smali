.class public final Lcom/dexcom/cgm/test/d;
.super Landroid/os/Binder;
.source "TestService.java"


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/test/TestService;


# direct methods
.method public constructor <init>(Lcom/dexcom/cgm/test/TestService;)V
    .locals 0

    .prologue
    .line 222
    iput-object p1, p0, Lcom/dexcom/cgm/test/d;->this$0:Lcom/dexcom/cgm/test/TestService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public final setTestDispatcher(Lcom/dexcom/cgm/test/api/TestDispatcher;)V
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/dexcom/cgm/test/d;->this$0:Lcom/dexcom/cgm/test/TestService;

    invoke-static {v0, p1}, Lcom/dexcom/cgm/test/TestService;->access$102(Lcom/dexcom/cgm/test/TestService;Lcom/dexcom/cgm/test/api/TestDispatcher;)Lcom/dexcom/cgm/test/api/TestDispatcher;

    .line 227
    return-void
.end method
