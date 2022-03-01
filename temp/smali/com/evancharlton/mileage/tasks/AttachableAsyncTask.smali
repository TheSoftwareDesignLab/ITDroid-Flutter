.class public abstract Lcom/evancharlton/mileage/tasks/AttachableAsyncTask;
.super Landroid/os/AsyncTask;
.source "AttachableAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Parent:",
        "Ljava/lang/Object;",
        "Params:",
        "Ljava/lang/Object;",
        "Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/os/AsyncTask",
        "<TParams;TProgress;TResult;>;"
    }
.end annotation


# instance fields
.field private mParent:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TParent;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    .local p0, "this":Lcom/evancharlton/mileage/tasks/AttachableAsyncTask;, "Lcom/evancharlton/mileage/tasks/AttachableAsyncTask<TParent;TParams;TProgress;TResult;>;"
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public attach(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TParent;)V"
        }
    .end annotation

    .prologue
    .line 11
    .local p0, "this":Lcom/evancharlton/mileage/tasks/AttachableAsyncTask;, "Lcom/evancharlton/mileage/tasks/AttachableAsyncTask<TParent;TParams;TProgress;TResult;>;"
    .local p1, "parent":Ljava/lang/Object;, "TParent;"
    iput-object p1, p0, Lcom/evancharlton/mileage/tasks/AttachableAsyncTask;->mParent:Ljava/lang/Object;

    .line 12
    return-void
.end method

.method protected final getParent()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TParent;"
        }
    .end annotation

    .prologue
    .line 15
    .local p0, "this":Lcom/evancharlton/mileage/tasks/AttachableAsyncTask;, "Lcom/evancharlton/mileage/tasks/AttachableAsyncTask<TParent;TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lcom/evancharlton/mileage/tasks/AttachableAsyncTask;->mParent:Ljava/lang/Object;

    return-object v0
.end method
