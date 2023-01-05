.class public abstract Lcom/evancharlton/mileage/ChartActivity$ChartGenerator;
.super Landroid/os/AsyncTask;
.source "ChartActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evancharlton/mileage/ChartActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ChartGenerator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Integer;",
        "[",
        "Lcom/artfulbits/aiCharts/Base/ChartSeries;",
        ">;"
    }
.end annotation


# instance fields
.field private mActivity:Lcom/evancharlton/mileage/ChartActivity;

.field private mCachedProgressDialog:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 133
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final attach(Lcom/evancharlton/mileage/ChartActivity;)V
    .locals 1
    .param p1, "activity"    # Lcom/evancharlton/mileage/ChartActivity;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/evancharlton/mileage/ChartActivity$ChartGenerator;->mActivity:Lcom/evancharlton/mileage/ChartActivity;

    .line 139
    iget-object v0, p0, Lcom/evancharlton/mileage/ChartActivity$ChartGenerator;->mActivity:Lcom/evancharlton/mileage/ChartActivity;

    invoke-virtual {v0}, Lcom/evancharlton/mileage/ChartActivity;->getProgressDialog()Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/evancharlton/mileage/ChartActivity$ChartGenerator;->mCachedProgressDialog:Landroid/app/ProgressDialog;

    .line 140
    return-void
.end method

.method protected final getActivity()Lcom/evancharlton/mileage/ChartActivity;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/evancharlton/mileage/ChartActivity$ChartGenerator;->mActivity:Lcom/evancharlton/mileage/ChartActivity;

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 133
    check-cast p1, [Lcom/artfulbits/aiCharts/Base/ChartSeries;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/evancharlton/mileage/ChartActivity$ChartGenerator;->onPostExecute([Lcom/artfulbits/aiCharts/Base/ChartSeries;)V

    return-void
.end method

.method protected onPostExecute([Lcom/artfulbits/aiCharts/Base/ChartSeries;)V
    .locals 4
    .param p1, "series"    # [Lcom/artfulbits/aiCharts/Base/ChartSeries;

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/evancharlton/mileage/ChartActivity$ChartGenerator;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 166
    :cond_0
    return-void

    .line 161
    :cond_1
    iget-object v2, p0, Lcom/evancharlton/mileage/ChartActivity$ChartGenerator;->mActivity:Lcom/evancharlton/mileage/ChartActivity;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/evancharlton/mileage/ChartActivity;->removeDialog(I)V

    .line 162
    array-length v1, p1

    .line 163
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 164
    iget-object v2, p0, Lcom/evancharlton/mileage/ChartActivity$ChartGenerator;->mActivity:Lcom/evancharlton/mileage/ChartActivity;

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Lcom/evancharlton/mileage/ChartActivity;->addChartSeries(Lcom/artfulbits/aiCharts/Base/ChartSeries;)V

    .line 163
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/evancharlton/mileage/ChartActivity$ChartGenerator;->mActivity:Lcom/evancharlton/mileage/ChartActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/evancharlton/mileage/ChartActivity;->showDialog(I)V

    .line 145
    iget-object v0, p0, Lcom/evancharlton/mileage/ChartActivity$ChartGenerator;->mActivity:Lcom/evancharlton/mileage/ChartActivity;

    invoke-virtual {v0}, Lcom/evancharlton/mileage/ChartActivity;->getProgressDialog()Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/evancharlton/mileage/ChartActivity$ChartGenerator;->mCachedProgressDialog:Landroid/app/ProgressDialog;

    .line 146
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 3
    .param p1, "updates"    # [Ljava/lang/Integer;

    .prologue
    const/4 v2, 0x1

    .line 150
    iget-object v0, p0, Lcom/evancharlton/mileage/ChartActivity$ChartGenerator;->mCachedProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 151
    array-length v0, p1

    if-le v0, v2, :cond_0

    .line 152
    iget-object v0, p0, Lcom/evancharlton/mileage/ChartActivity$ChartGenerator;->mCachedProgressDialog:Landroid/app/ProgressDialog;

    aget-object v1, p1, v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 154
    :cond_0
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 133
    check-cast p1, [Ljava/lang/Integer;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/evancharlton/mileage/ChartActivity$ChartGenerator;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
