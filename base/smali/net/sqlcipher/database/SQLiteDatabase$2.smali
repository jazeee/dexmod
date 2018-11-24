.class Lnet/sqlcipher/database/SQLiteDatabase$2;
.super Ljava/lang/Object;
.source "SQLiteDatabase.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lnet/sqlcipher/database/SQLiteDatabase;

.field final synthetic val$password:[C


# direct methods
.method constructor <init>(Lnet/sqlcipher/database/SQLiteDatabase;[C)V
    .locals 0

    .prologue
    .line 2368
    iput-object p1, p0, Lnet/sqlcipher/database/SQLiteDatabase$2;->this$0:Lnet/sqlcipher/database/SQLiteDatabase;

    iput-object p2, p0, Lnet/sqlcipher/database/SQLiteDatabase$2;->val$password:[C

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2370
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteDatabase$2;->val$password:[C

    if-eqz v0, :cond_0

    .line 2371
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteDatabase$2;->this$0:Lnet/sqlcipher/database/SQLiteDatabase;

    iget-object v1, p0, Lnet/sqlcipher/database/SQLiteDatabase$2;->val$password:[C

    invoke-static {v0, v1}, Lnet/sqlcipher/database/SQLiteDatabase;->access$100(Lnet/sqlcipher/database/SQLiteDatabase;[C)V

    .line 2373
    :cond_0
    return-void
.end method
