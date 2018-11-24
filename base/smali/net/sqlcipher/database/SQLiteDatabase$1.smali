.class Lnet/sqlcipher/database/SQLiteDatabase$1;
.super Ljava/lang/Object;
.source "SQLiteDatabase.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lnet/sqlcipher/database/SQLiteDatabase;

.field final synthetic val$keyMaterial:[B


# direct methods
.method constructor <init>(Lnet/sqlcipher/database/SQLiteDatabase;[B)V
    .locals 0

    .prologue
    .line 2356
    iput-object p1, p0, Lnet/sqlcipher/database/SQLiteDatabase$1;->this$0:Lnet/sqlcipher/database/SQLiteDatabase;

    iput-object p2, p0, Lnet/sqlcipher/database/SQLiteDatabase$1;->val$keyMaterial:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2358
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteDatabase$1;->val$keyMaterial:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteDatabase$1;->val$keyMaterial:[B

    array-length v0, v0

    if-lez v0, :cond_0

    .line 2359
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteDatabase$1;->this$0:Lnet/sqlcipher/database/SQLiteDatabase;

    iget-object v1, p0, Lnet/sqlcipher/database/SQLiteDatabase$1;->val$keyMaterial:[B

    invoke-static {v0, v1}, Lnet/sqlcipher/database/SQLiteDatabase;->access$000(Lnet/sqlcipher/database/SQLiteDatabase;[B)V

    .line 2361
    :cond_0
    return-void
.end method
