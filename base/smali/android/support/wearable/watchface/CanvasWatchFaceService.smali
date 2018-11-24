.class public abstract Landroid/support/wearable/watchface/CanvasWatchFaceService;
.super Landroid/support/wearable/watchface/WatchFaceService;
.source "CanvasWatchFaceService.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# static fields
.field private static final LOG_VERBOSE:Z = false

.field private static final TAG:Ljava/lang/String; = "CanvasWatchFaceService"

.field private static final TRACE_DRAW:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/support/wearable/watchface/WatchFaceService;-><init>()V

    .line 38
    return-void
.end method


# virtual methods
.method public bridge synthetic onCreateEngine()Landroid/service/wallpaper/WallpaperService$Engine;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0}, Landroid/support/wearable/watchface/CanvasWatchFaceService;->onCreateEngine()Landroid/support/wearable/watchface/CanvasWatchFaceService$Engine;

    move-result-object v0

    return-object v0
.end method

.method public onCreateEngine()Landroid/support/wearable/watchface/CanvasWatchFaceService$Engine;
    .locals 1

    .prologue
    .line 30
    new-instance v0, Landroid/support/wearable/watchface/CanvasWatchFaceService$Engine;

    invoke-direct {v0, p0}, Landroid/support/wearable/watchface/CanvasWatchFaceService$Engine;-><init>(Landroid/support/wearable/watchface/CanvasWatchFaceService;)V

    return-object v0
.end method

.method public bridge synthetic onCreateEngine()Landroid/support/wearable/watchface/WatchFaceService$Engine;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0}, Landroid/support/wearable/watchface/CanvasWatchFaceService;->onCreateEngine()Landroid/support/wearable/watchface/CanvasWatchFaceService$Engine;

    move-result-object v0

    return-object v0
.end method
