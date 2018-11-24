.class public abstract Landroid/support/wearable/watchface/WatchFaceService;
.super Landroid/service/wallpaper/WallpaperService;
.source "WatchFaceService.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# static fields
.field public static final ACTION_REQUEST_STATE:Ljava/lang/String; = "com.google.android.wearable.watchfaces.action.REQUEST_STATE"

.field public static final COMMAND_AMBIENT_UPDATE:Ljava/lang/String; = "com.google.android.wearable.action.AMBIENT_UPDATE"

.field public static final COMMAND_BACKGROUND_ACTION:Ljava/lang/String; = "com.google.android.wearable.action.BACKGROUND_ACTION"

.field public static final COMMAND_REQUEST_STYLE:Ljava/lang/String; = "com.google.android.wearable.action.REQUEST_STYLE"

.field public static final COMMAND_SET_BINDER:Ljava/lang/String; = "com.google.android.wearable.action.SET_BINDER"

.field public static final COMMAND_SET_PROPERTIES:Ljava/lang/String; = "com.google.android.wearable.action.SET_PROPERTIES"

.field public static final COMMAND_TAP:Ljava/lang/String; = "android.wallpaper.tap"

.field public static final COMMAND_TOUCH:Ljava/lang/String; = "android.wallpaper.touch"

.field public static final COMMAND_TOUCH_CANCEL:Ljava/lang/String; = "android.wallpaper.touch_cancel"

.field public static final EXTRA_AMBIENT_MODE:Ljava/lang/String; = "ambient_mode"

.field public static final EXTRA_BINDER:Ljava/lang/String; = "binder"

.field public static final EXTRA_CARD_LOCATION:Ljava/lang/String; = "card_location"

.field public static final EXTRA_INTERRUPTION_FILTER:Ljava/lang/String; = "interruption_filter"

.field public static final EXTRA_NOTIFICATION_COUNT:Ljava/lang/String; = "notification_count"

.field public static final EXTRA_TAP_TIME:Ljava/lang/String; = "tap_time"

.field public static final EXTRA_UNREAD_COUNT:Ljava/lang/String; = "unread_count"

.field public static final INTERRUPTION_FILTER_ALL:I = 0x1

.field public static final INTERRUPTION_FILTER_NONE:I = 0x3

.field public static final INTERRUPTION_FILTER_PRIORITY:I = 0x2

.field public static final PROPERTY_BURN_IN_PROTECTION:Ljava/lang/String; = "burn_in_protection"

.field public static final PROPERTY_LOW_BIT_AMBIENT:Ljava/lang/String; = "low_bit_ambient"

.field private static final SURFACE_DRAW_TIMEOUT_MS:J = 0x64L

.field private static final TAG:Ljava/lang/String; = "WatchFaceService"

.field public static final TAP_TYPE_TAP:I = 0x2

.field public static final TAP_TYPE_TOUCH:I = 0x0

.field public static final TAP_TYPE_TOUCH_CANCEL:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService;-><init>()V

    .line 213
    return-void
.end method


# virtual methods
.method public bridge synthetic onCreateEngine()Landroid/service/wallpaper/WallpaperService$Engine;
    .locals 1

    .prologue
    .line 72
    invoke-virtual {p0}, Landroid/support/wearable/watchface/WatchFaceService;->onCreateEngine()Landroid/support/wearable/watchface/WatchFaceService$Engine;

    move-result-object v0

    return-object v0
.end method

.method public abstract onCreateEngine()Landroid/support/wearable/watchface/WatchFaceService$Engine;
.end method
