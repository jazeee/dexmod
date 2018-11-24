.class final Lcom/dexcom/cgm/activities/DatabaseCorruptionHandler$3;
.super Ljava/lang/Object;
.source "DatabaseCorruptionHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/dexcom/cgm/activities/DatabaseCorruptionHandler$3;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/dexcom/cgm/activities/DatabaseCorruptionHandler$3;->val$activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/alertdialogs/DialogCreator;->createSQLErrorDialog(Landroid/app/Activity;)V

    .line 145
    return-void
.end method
