.class public final Landroid/support/wearable/provider/WearableCalendarContract$Instances;
.super Ljava/lang/Object;
.source "WearableCalendarContract.java"


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    sget-object v0, Landroid/support/wearable/provider/WearableCalendarContract;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "instances/when"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/support/wearable/provider/WearableCalendarContract$Instances;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
