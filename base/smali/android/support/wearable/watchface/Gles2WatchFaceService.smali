.class public abstract Landroid/support/wearable/watchface/Gles2WatchFaceService;
.super Landroid/support/wearable/watchface/WatchFaceService;
.source "Gles2WatchFaceService.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# static fields
.field private static final EGL_CONFIG_ATTRIB_LIST:[I

.field private static final EGL_CONTEXT_ATTRIB_LIST:[I

.field private static final EGL_SURFACE_ATTRIB_LIST:[I

.field private static final LOG_VERBOSE:Z = false

.field private static final TAG:Ljava/lang/String; = "Gles2WatchFaceService"

.field private static final TRACE_DRAW:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 37
    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/support/wearable/watchface/Gles2WatchFaceService;->EGL_CONFIG_ATTRIB_LIST:[I

    .line 46
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Landroid/support/wearable/watchface/Gles2WatchFaceService;->EGL_CONTEXT_ATTRIB_LIST:[I

    .line 51
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x3038

    aput v2, v0, v1

    sput-object v0, Landroid/support/wearable/watchface/Gles2WatchFaceService;->EGL_SURFACE_ATTRIB_LIST:[I

    return-void

    .line 37
    :array_0
    .array-data 4
        0x3040
        0x4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x8
        0x3038
    .end array-data

    .line 46
    :array_1
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/support/wearable/watchface/WatchFaceService;-><init>()V

    .line 65
    return-void
.end method

.method static synthetic access$300()[I
    .locals 1

    .prologue
    .line 28
    sget-object v0, Landroid/support/wearable/watchface/Gles2WatchFaceService;->EGL_CONFIG_ATTRIB_LIST:[I

    return-object v0
.end method

.method static synthetic access$400()[I
    .locals 1

    .prologue
    .line 28
    sget-object v0, Landroid/support/wearable/watchface/Gles2WatchFaceService;->EGL_CONTEXT_ATTRIB_LIST:[I

    return-object v0
.end method

.method static synthetic access$500()[I
    .locals 1

    .prologue
    .line 28
    sget-object v0, Landroid/support/wearable/watchface/Gles2WatchFaceService;->EGL_SURFACE_ATTRIB_LIST:[I

    return-object v0
.end method


# virtual methods
.method public bridge synthetic onCreateEngine()Landroid/service/wallpaper/WallpaperService$Engine;
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0}, Landroid/support/wearable/watchface/Gles2WatchFaceService;->onCreateEngine()Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;

    move-result-object v0

    return-object v0
.end method

.method public onCreateEngine()Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;
    .locals 1

    .prologue
    .line 57
    new-instance v0, Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;

    invoke-direct {v0, p0}, Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;-><init>(Landroid/support/wearable/watchface/Gles2WatchFaceService;)V

    return-object v0
.end method

.method public bridge synthetic onCreateEngine()Landroid/support/wearable/watchface/WatchFaceService$Engine;
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0}, Landroid/support/wearable/watchface/Gles2WatchFaceService;->onCreateEngine()Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;

    move-result-object v0

    return-object v0
.end method
