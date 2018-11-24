.class public Landroid/support/wearable/watchface/WatchFaceStyle;
.super Ljava/lang/Object;
.source "WatchFaceStyle.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# static fields
.field public static final AMBIENT_PEEK_MODE_HIDDEN:I = 0x1

.field public static final AMBIENT_PEEK_MODE_VISIBLE:I = 0x0

.field public static final BACKGROUND_VISIBILITY_INTERRUPTIVE:I = 0x0

.field public static final BACKGROUND_VISIBILITY_PERSISTENT:I = 0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/support/wearable/watchface/WatchFaceStyle;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEY_ACCEPTS_TAPS:Ljava/lang/String; = "acceptsTapEvents"

.field public static final KEY_AMBIENT_PEEK_MODE:Ljava/lang/String; = "ambientPeekMode"

.field public static final KEY_BACKGROUND_VISIBILITY:Ljava/lang/String; = "backgroundVisibility"

.field public static final KEY_CARD_PEEK_MODE:Ljava/lang/String; = "cardPeekMode"

.field public static final KEY_CARD_PROGRESS_MODE:Ljava/lang/String; = "cardProgressMode"

.field public static final KEY_COMPONENT:Ljava/lang/String; = "component"

.field public static final KEY_HOTWORD_INDICATOR_GRAVITY:Ljava/lang/String; = "hotwordIndicatorGravity"

.field public static final KEY_PEEK_CARD_OPACITY:Ljava/lang/String; = "peekOpacityMode"

.field public static final KEY_SHOW_SYSTEM_UI_TIME:Ljava/lang/String; = "showSystemUiTime"

.field public static final KEY_SHOW_UNREAD_INDICATOR:Ljava/lang/String; = "showUnreadIndicator"

.field public static final KEY_STATUS_BAR_GRAVITY:Ljava/lang/String; = "statusBarGravity"

.field public static final KEY_VIEW_PROTECTION_MODE:Ljava/lang/String; = "viewProtectionMode"

.field public static final PEEK_MODE_SHORT:I = 0x1

.field public static final PEEK_MODE_VARIABLE:I = 0x0

.field public static final PEEK_OPACITY_MODE_OPAQUE:I = 0x0

.field public static final PEEK_OPACITY_MODE_TRANSLUCENT:I = 0x1

.field public static final PROGRESS_MODE_DISPLAY:I = 0x1

.field public static final PROGRESS_MODE_NONE:I = 0x0

.field public static final PROTECT_HOTWORD_INDICATOR:I = 0x2

.field public static final PROTECT_STATUS_BAR:I = 0x1

.field public static final PROTECT_WHOLE_SCREEN:I = 0x4


# instance fields
.field private final acceptsTapEvents:Z

.field private final ambientPeekMode:I

.field private final backgroundVisibility:I

.field private final cardPeekMode:I

.field private final cardProgressMode:I

.field private final component:Landroid/content/ComponentName;

.field private final hotwordIndicatorGravity:I

.field private final peekOpacityMode:I

.field private final showSystemUiTime:Z

.field private final showUnreadCountIndicator:Z

.field private final statusBarGravity:I

.field private final viewProtectionMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 294
    new-instance v0, Landroid/support/wearable/watchface/WatchFaceStyle$1;

    invoke-direct {v0}, Landroid/support/wearable/watchface/WatchFaceStyle$1;-><init>()V

    sput-object v0, Landroid/support/wearable/watchface/WatchFaceStyle;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/content/ComponentName;IIIZIIIIIZZ)V
    .locals 0

    .prologue
    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    iput-object p1, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->component:Landroid/content/ComponentName;

    .line 179
    iput p6, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->ambientPeekMode:I

    .line 180
    iput p4, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->backgroundVisibility:I

    .line 181
    iput p2, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->cardPeekMode:I

    .line 182
    iput p3, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->cardProgressMode:I

    .line 183
    iput p10, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->hotwordIndicatorGravity:I

    .line 184
    iput p7, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->peekOpacityMode:I

    .line 185
    iput-boolean p5, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->showSystemUiTime:Z

    .line 186
    iput-boolean p11, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->showUnreadCountIndicator:Z

    .line 187
    iput p9, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->statusBarGravity:I

    .line 188
    iput p8, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->viewProtectionMode:I

    .line 189
    iput-boolean p12, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->acceptsTapEvents:Z

    .line 190
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/ComponentName;IIIZIIIIIZZLandroid/support/wearable/watchface/WatchFaceStyle$1;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct/range {p0 .. p12}, Landroid/support/wearable/watchface/WatchFaceStyle;-><init>(Landroid/content/ComponentName;IIIZIIIIIZZ)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    const-string v0, "component"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    iput-object v0, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->component:Landroid/content/ComponentName;

    .line 208
    const-string v0, "ambientPeekMode"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->ambientPeekMode:I

    .line 209
    const-string v0, "backgroundVisibility"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->backgroundVisibility:I

    .line 211
    const-string v0, "cardPeekMode"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->cardPeekMode:I

    .line 212
    const-string v0, "cardProgressMode"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->cardProgressMode:I

    .line 213
    const-string v0, "hotwordIndicatorGravity"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->hotwordIndicatorGravity:I

    .line 214
    const-string v0, "peekOpacityMode"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->peekOpacityMode:I

    .line 215
    const-string v0, "showSystemUiTime"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->showSystemUiTime:Z

    .line 216
    const-string v0, "showUnreadIndicator"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->showUnreadCountIndicator:Z

    .line 217
    const-string v0, "statusBarGravity"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->statusBarGravity:I

    .line 218
    const-string v0, "viewProtectionMode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->viewProtectionMode:I

    .line 219
    const-string v0, "acceptsTapEvents"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->acceptsTapEvents:Z

    .line 220
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 194
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 245
    if-eqz p1, :cond_0

    instance-of v1, p1, Landroid/support/wearable/watchface/WatchFaceStyle;

    if-nez v1, :cond_1

    .line 249
    :cond_0
    :goto_0
    return v0

    .line 248
    :cond_1
    check-cast p1, Landroid/support/wearable/watchface/WatchFaceStyle;

    .line 249
    iget-object v1, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->component:Landroid/content/ComponentName;

    iget-object v2, p1, Landroid/support/wearable/watchface/WatchFaceStyle;->component:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->cardPeekMode:I

    iget v2, p1, Landroid/support/wearable/watchface/WatchFaceStyle;->cardPeekMode:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->cardProgressMode:I

    iget v2, p1, Landroid/support/wearable/watchface/WatchFaceStyle;->cardProgressMode:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->backgroundVisibility:I

    iget v2, p1, Landroid/support/wearable/watchface/WatchFaceStyle;->backgroundVisibility:I

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->showSystemUiTime:Z

    iget-boolean v2, p1, Landroid/support/wearable/watchface/WatchFaceStyle;->showSystemUiTime:Z

    if-ne v1, v2, :cond_0

    iget v1, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->ambientPeekMode:I

    iget v2, p1, Landroid/support/wearable/watchface/WatchFaceStyle;->ambientPeekMode:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->peekOpacityMode:I

    iget v2, p1, Landroid/support/wearable/watchface/WatchFaceStyle;->peekOpacityMode:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->viewProtectionMode:I

    iget v2, p1, Landroid/support/wearable/watchface/WatchFaceStyle;->viewProtectionMode:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->statusBarGravity:I

    iget v2, p1, Landroid/support/wearable/watchface/WatchFaceStyle;->statusBarGravity:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->hotwordIndicatorGravity:I

    iget v2, p1, Landroid/support/wearable/watchface/WatchFaceStyle;->hotwordIndicatorGravity:I

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->showUnreadCountIndicator:Z

    iget-boolean v2, p1, Landroid/support/wearable/watchface/WatchFaceStyle;->showUnreadCountIndicator:Z

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->acceptsTapEvents:Z

    iget-boolean v2, p1, Landroid/support/wearable/watchface/WatchFaceStyle;->acceptsTapEvents:Z

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getAcceptsTapEvents()Z
    .locals 1

    .prologue
    .line 413
    iget-boolean v0, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->acceptsTapEvents:Z

    return v0
.end method

.method public getAmbientPeekMode()I
    .locals 1

    .prologue
    .line 397
    iget v0, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->ambientPeekMode:I

    return v0
.end method

.method public getBackgroundVisibility()I
    .locals 1

    .prologue
    .line 380
    iget v0, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->backgroundVisibility:I

    return v0
.end method

.method public getCardPeekMode()I
    .locals 1

    .prologue
    .line 320
    iget v0, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->cardPeekMode:I

    return v0
.end method

.method public getCardProgressMode()I
    .locals 1

    .prologue
    .line 327
    iget v0, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->cardProgressMode:I

    return v0
.end method

.method public getComponent()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->component:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getHotwordIndicatorGravity()I
    .locals 1

    .prologue
    .line 371
    iget v0, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->hotwordIndicatorGravity:I

    return v0
.end method

.method public getPeekOpacityMode()I
    .locals 1

    .prologue
    .line 337
    iget v0, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->peekOpacityMode:I

    return v0
.end method

.method public getShowSystemUiTime()Z
    .locals 1

    .prologue
    .line 388
    iget-boolean v0, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->showSystemUiTime:Z

    return v0
.end method

.method public getShowUnreadCountIndicator()Z
    .locals 1

    .prologue
    .line 406
    iget-boolean v0, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->showUnreadCountIndicator:Z

    return v0
.end method

.method public getStatusBarGravity()I
    .locals 1

    .prologue
    .line 360
    iget v0, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->statusBarGravity:I

    return v0
.end method

.method public getViewProtectionMode()I
    .locals 1

    .prologue
    .line 348
    iget v0, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->viewProtectionMode:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 266
    iget-object v0, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->component:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    .line 267
    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->cardPeekMode:I

    add-int/2addr v0, v3

    .line 268
    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->cardProgressMode:I

    add-int/2addr v0, v3

    .line 269
    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->backgroundVisibility:I

    add-int/2addr v0, v3

    .line 270
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->showSystemUiTime:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr v0, v3

    .line 271
    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->ambientPeekMode:I

    add-int/2addr v0, v3

    .line 272
    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->peekOpacityMode:I

    add-int/2addr v0, v3

    .line 273
    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->viewProtectionMode:I

    add-int/2addr v0, v3

    .line 274
    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->statusBarGravity:I

    add-int/2addr v0, v3

    .line 275
    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->hotwordIndicatorGravity:I

    add-int/2addr v0, v3

    .line 276
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->showUnreadCountIndicator:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v3

    .line 277
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v3, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->acceptsTapEvents:Z

    if-eqz v3, :cond_2

    :goto_2
    add-int/2addr v0, v1

    .line 278
    return v0

    :cond_0
    move v0, v2

    .line 270
    goto :goto_0

    :cond_1
    move v0, v2

    .line 276
    goto :goto_1

    :cond_2
    move v1, v2

    .line 277
    goto :goto_2
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 226
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 227
    const-string v1, "component"

    iget-object v2, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->component:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 229
    const-string v1, "ambientPeekMode"

    iget v2, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->ambientPeekMode:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 230
    const-string v1, "backgroundVisibility"

    iget v2, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->backgroundVisibility:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 231
    const-string v1, "cardPeekMode"

    iget v2, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->cardPeekMode:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 232
    const-string v1, "cardProgressMode"

    iget v2, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->cardProgressMode:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 233
    const-string v1, "hotwordIndicatorGravity"

    iget v2, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->hotwordIndicatorGravity:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 234
    const-string v1, "peekOpacityMode"

    iget v2, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->peekOpacityMode:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 235
    const-string v1, "showSystemUiTime"

    iget-boolean v2, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->showSystemUiTime:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 236
    const-string v1, "showUnreadIndicator"

    iget-boolean v2, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->showUnreadCountIndicator:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 237
    const-string v1, "statusBarGravity"

    iget v2, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->statusBarGravity:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 238
    const-string v1, "viewProtectionMode"

    iget v2, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->viewProtectionMode:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 239
    const-string v1, "acceptsTapEvents"

    iget-boolean v2, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->acceptsTapEvents:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 240
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 284
    const-string v1, "watch face %s (card %d/%d bg %d time %s ambientPeek %d peekOpacityMode %d viewProtectionMode %d statusBarGravity %d hotwordIndicatorGravity %d showUnreadCountIndicator %s acceptsTapEvents %s)"

    const/16 v0, 0xc

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v0, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->component:Landroid/content/ComponentName;

    if-nez v0, :cond_0

    const-string v0, "default"

    :goto_0
    aput-object v0, v2, v3

    const/4 v0, 0x1

    iget v3, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->cardPeekMode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x2

    iget v3, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->cardProgressMode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x3

    iget v3, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->backgroundVisibility:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x4

    iget-boolean v3, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->showSystemUiTime:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x5

    iget v3, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->ambientPeekMode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x6

    iget v3, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->peekOpacityMode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x7

    iget v3, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->viewProtectionMode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/16 v0, 0x8

    iget v3, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->statusBarGravity:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/16 v0, 0x9

    iget v3, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->hotwordIndicatorGravity:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/16 v0, 0xa

    iget-boolean v3, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->showUnreadCountIndicator:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v0

    const/16 v0, 0xb

    iget-boolean v3, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->acceptsTapEvents:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->component:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 199
    invoke-virtual {p0}, Landroid/support/wearable/watchface/WatchFaceStyle;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 200
    return-void
.end method
