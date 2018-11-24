.class final Lcom/dexcom/c/d;
.super Ljava/lang/Object;
.source "SystemHealthCheckerComponent.java"

# interfaces
.implements Lcom/dexcom/cgm/j/a;


# direct methods
.method constructor <init>(Lcom/dexcom/c/c;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getFreeDiskSpaceBytes()J
    .locals 2

    .prologue
    .line 49
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v0

    return-wide v0
.end method
