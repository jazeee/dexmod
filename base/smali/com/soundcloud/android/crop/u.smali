.class public final Lcom/soundcloud/android/crop/u;
.super Ljava/lang/Object;
.source "R.java"


# static fields
.field public static final CropImageView:[I

.field public static final CropImageView_highlightColor:I = 0x0

.field public static final CropImageView_showCircle:I = 0x2

.field public static final CropImageView_showHandles:I = 0x3

.field public static final CropImageView_showThirds:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/soundcloud/android/crop/u;->CropImageView:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0100d6
        0x7f0100d7
        0x7f0100d8
        0x7f0100d9
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
