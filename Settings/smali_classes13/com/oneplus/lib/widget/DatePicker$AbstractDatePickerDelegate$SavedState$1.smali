.class Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState$1;
.super Ljava/lang/Object;
.source "DatePicker.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 725
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 728
    new-instance v0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState;-><init>(Landroid/os/Parcel;Lcom/oneplus/lib/widget/DatePicker$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 725
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState;
    .locals 1
    .param p1, "size"    # I

    .line 732
    new-array v0, p1, [Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 725
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState$1;->newArray(I)[Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState;

    move-result-object p1

    return-object p1
.end method