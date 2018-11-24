.class public Lnet/sqlcipher/database/SQLiteCursor$MainThreadNotificationHandler;
.super Landroid/os/Handler;
.source "SQLiteCursor.java"


# instance fields
.field final synthetic this$0:Lnet/sqlcipher/database/SQLiteCursor;


# direct methods
.method protected constructor <init>(Lnet/sqlcipher/database/SQLiteCursor;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lnet/sqlcipher/database/SQLiteCursor$MainThreadNotificationHandler;->this$0:Lnet/sqlcipher/database/SQLiteCursor;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteCursor$MainThreadNotificationHandler;->this$0:Lnet/sqlcipher/database/SQLiteCursor;

    invoke-static {v0}, Lnet/sqlcipher/database/SQLiteCursor;->access$700(Lnet/sqlcipher/database/SQLiteCursor;)V

    .line 173
    return-void
.end method
