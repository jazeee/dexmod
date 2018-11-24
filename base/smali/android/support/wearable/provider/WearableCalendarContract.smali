.class public Landroid/support/wearable/provider/WearableCalendarContract;
.super Ljava/lang/Object;
.source "WearableCalendarContract.java"


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.google.android.wearable.provider.calendar"

.field public static final CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-string v0, "content://com.google.android.wearable.provider.calendar"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/support/wearable/provider/WearableCalendarContract;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method
