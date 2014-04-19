; ModuleID = 're.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%class.BitStreamScanner = type { %union.anon, i64 }
%union.anon = type { [15 x <2 x i64>] }
%struct.cpu_set_t = type { [16 x i64] }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external global i8
@_ZL12simd_const_1 = internal global <2 x i64> zeroinitializer, align 16
@_ZL13simd_sign_bit = internal global <2 x i64> zeroinitializer, align 16
@EOF_mask = global <2 x i64> zeroinitializer, align 16
@parser_timer = global i8* null, align 8
@.str = private unnamed_addr constant [3 x i8] c"cv\00", align 1
@.str4 = private unnamed_addr constant [20 x i8] c"Invalid option: %c\0A\00", align 1
@.str5 = private unnamed_addr constant [47 x i8] c"Usage: %s [-c] [-v] <filename> [<outputfile>]\0A\00", align 1
@optind = external global i32
@.str7 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@stderr = external global %struct._IO_FILE*
@.str8 = private unnamed_addr constant [34 x i8] c"Error: cannot open %s for input.\0A\00", align 1
@stdout = external global %struct._IO_FILE*
@.str10 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str11 = private unnamed_addr constant [36 x i8] c"Error: cannot open %s for writing.\0A\00", align 1
@.str12 = private unnamed_addr constant [40 x i8] c"Parabix grep implementation: July 2013\0A\00", align 1
@.str13 = private unnamed_addr constant [19 x i8] c"Matching Lines:%d\0A\00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()* }] [{ i32, void ()* } { i32 65535, void ()* @_GLOBAL__I_a }]
@str = private unnamed_addr constant [19 x i8] c"Too many arguments\00"
@str15 = private unnamed_addr constant [18 x i8] c"Too few arguments\00"
@str16 = private unnamed_addr constant [31 x i8] c"sched_setaffinity call failed.\00"

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"*) #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"*) #1

; Function Attrs: nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) #2

; Function Attrs: nounwind
declare {}* @llvm.invariant.start(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #3 {
  %LF_scanner.i = alloca %class.BitStreamScanner, align 16
  %match_scanner.i = alloca %class.BitStreamScanner, align 16
  %src_buffer.i = alloca [1920 x i8], align 16
  %1 = alloca i64, align 8
  br label %.outer

.outer:                                           ; preds = %2, %0
  %count_only_option.0.ph = phi i32 [ 0, %0 ], [ 1, %2 ]
  %print_version_option.0.ph = phi i32 [ 0, %0 ], [ %print_version_option.0.ph37, %2 ]
  br label %.outer36

.outer36:                                         ; preds = %2, %.outer
  %print_version_option.0.ph37 = phi i32 [ %print_version_option.0.ph, %.outer ], [ 1, %2 ]
  br label %2

; <label>:2                                       ; preds = %2, %.outer36
  %3 = call i32 @getopt(i32 %argc, i8** %argv, i8* getelementptr inbounds ([3 x i8]* @.str, i64 0, i64 0)) #2
  switch i32 %3, label %4 [
    i32 -1, label %8
    i32 99, label %.outer
    i32 118, label %.outer36
    i32 63, label %2
  ]

; <label>:4                                       ; preds = %2
  %5 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([20 x i8]* @.str4, i64 0, i64 0), i32 %3)
  %6 = load i8** %argv, align 8, !tbaa !0
  %7 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([47 x i8]* @.str5, i64 0, i64 0), i8* %6)
  call void @exit(i32 -1) #6
  unreachable

; <label>:8                                       ; preds = %2
  %9 = load i32* @optind, align 4, !tbaa !3
  %10 = icmp slt i32 %9, %argc
  br i1 %10, label %14, label %11

; <label>:11                                      ; preds = %8
  %puts1 = call i32 @puts(i8* getelementptr inbounds ([18 x i8]* @str15, i64 0, i64 0))
  %12 = load i8** %argv, align 8, !tbaa !0
  %13 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([47 x i8]* @.str5, i64 0, i64 0), i8* %12)
  call void @exit(i32 -1) #6
  unreachable

; <label>:14                                      ; preds = %8
  %15 = add nsw i32 %9, 1
  store i32 %15, i32* @optind, align 4, !tbaa !3
  %16 = sext i32 %9 to i64
  %17 = getelementptr inbounds i8** %argv, i64 %16
  %18 = load i8** %17, align 8, !tbaa !0
  %19 = call %struct._IO_FILE* @fopen(i8* %18, i8* getelementptr inbounds ([3 x i8]* @.str7, i64 0, i64 0))
  %20 = icmp eq %struct._IO_FILE* %19, null
  br i1 %20, label %21, label %24

; <label>:21                                      ; preds = %14
  %22 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %23 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([34 x i8]* @.str8, i64 0, i64 0), i8* %18)
  call void @exit(i32 -1) #6
  unreachable

; <label>:24                                      ; preds = %14
  %25 = load i32* @optind, align 4, !tbaa !3
  %26 = icmp slt i32 %25, %argc
  br i1 %26, label %29, label %27

; <label>:27                                      ; preds = %24
  %28 = load %struct._IO_FILE** @stdout, align 8, !tbaa !0
  br label %44

; <label>:29                                      ; preds = %24
  %30 = add nsw i32 %25, 1
  store i32 %30, i32* @optind, align 4, !tbaa !3
  %31 = sext i32 %25 to i64
  %32 = getelementptr inbounds i8** %argv, i64 %31
  %33 = load i8** %32, align 8, !tbaa !0
  %34 = icmp eq i32 %30, %argc
  br i1 %34, label %38, label %35

; <label>:35                                      ; preds = %29
  %puts = call i32 @puts(i8* getelementptr inbounds ([19 x i8]* @str, i64 0, i64 0))
  %36 = load i8** %argv, align 8, !tbaa !0
  %37 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([47 x i8]* @.str5, i64 0, i64 0), i8* %36)
  call void @exit(i32 -1) #6
  unreachable

; <label>:38                                      ; preds = %29
  %39 = call %struct._IO_FILE* @fopen(i8* %33, i8* getelementptr inbounds ([3 x i8]* @.str10, i64 0, i64 0))
  %40 = icmp eq %struct._IO_FILE* %39, null
  br i1 %40, label %41, label %44

; <label>:41                                      ; preds = %38
  %42 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %43 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %42, i8* getelementptr inbounds ([36 x i8]* @.str11, i64 0, i64 0), i8* %33)
  call void @exit(i32 -1) #6
  unreachable

; <label>:44                                      ; preds = %38, %27
  %outfile.0 = phi %struct._IO_FILE* [ %28, %27 ], [ %39, %38 ]
  %45 = icmp eq i32 %print_version_option.0.ph37, 0
  br i1 %45, label %48, label %46

; <label>:46                                      ; preds = %44
  %47 = call i64 @fwrite(i8* getelementptr inbounds ([40 x i8]* @.str12, i64 0, i64 0), i64 39, i64 1, %struct._IO_FILE* %outfile.0)
  br label %48

; <label>:48                                      ; preds = %46, %44
  %49 = bitcast i64* %1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %49) #2
  store i64 1, i64* %1, align 8, !tbaa !4
  %50 = bitcast i64* %1 to %struct.cpu_set_t*
  %51 = call i32 @sched_setaffinity(i32 0, i64 8, %struct.cpu_set_t* %50) #2
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %_ZL22set_processor_affinitym.exit

; <label>:53                                      ; preds = %48
  %puts.i = call i32 @puts(i8* getelementptr inbounds ([31 x i8]* @str16, i64 0, i64 0)) #2
  br label %_ZL22set_processor_affinitym.exit

_ZL22set_processor_affinitym.exit:                ; preds = %53, %48
  call void @llvm.lifetime.end(i64 8, i8* %49) #2
  %54 = bitcast %class.BitStreamScanner* %LF_scanner.i to i8*
  call void @llvm.lifetime.start(i64 256, i8* %54) #2
  %55 = bitcast %class.BitStreamScanner* %match_scanner.i to i8*
  call void @llvm.lifetime.start(i64 256, i8* %55) #2
  %56 = getelementptr inbounds [1920 x i8]* %src_buffer.i, i64 0, i64 0
  call void @llvm.lifetime.start(i64 1920, i8* %56) #2
  %57 = call i64 @fread(i8* %56, i64 1, i64 1920, %struct._IO_FILE* %19) #2
  %58 = trunc i64 %57 to i32
  %59 = icmp sgt i32 %58, 1919
  %60 = getelementptr inbounds %class.BitStreamScanner* %LF_scanner.i, i64 0, i32 1
  store i64 0, i64* %60, align 16, !tbaa !4
  %61 = getelementptr inbounds %class.BitStreamScanner* %match_scanner.i, i64 0, i32 1
  store i64 0, i64* %61, align 16, !tbaa !4
  br i1 %59, label %.preheader73.lr.ph.i, label %.preheader49.i

.preheader73.lr.ph.i:                             ; preds = %_ZL22set_processor_affinitym.exit
  %62 = icmp eq i32 %count_only_option.0.ph, 0
  %63 = bitcast %class.BitStreamScanner* %LF_scanner.i to [30 x i64]*
  %64 = bitcast %class.BitStreamScanner* %match_scanner.i to [30 x i64]*
  br label %.preheader73.i

.preheader73.i:                                   ; preds = %.loopexit96.i, %.preheader73.lr.ph.i
  %match_vector.0110.i = phi <2 x i64> [ zeroinitializer, %.preheader73.lr.ph.i ], [ %match_vector.1.lcssa.i, %.loopexit96.i ]
  %match_count.0109.i = phi i32 [ 0, %.preheader73.lr.ph.i ], [ %match_count.1.lcssa.i, %.loopexit96.i ]
  %65 = phi <2 x i64> [ zeroinitializer, %.preheader73.lr.ph.i ], [ %.lcssa79.i, %.loopexit96.i ]
  %66 = phi <2 x i64> [ zeroinitializer, %.preheader73.lr.ph.i ], [ %.lcssa78.i, %.loopexit96.i ]
  %67 = phi <2 x i64> [ zeroinitializer, %.preheader73.lr.ph.i ], [ %.lcssa77.i, %.loopexit96.i ]
  %68 = phi <2 x i64> [ zeroinitializer, %.preheader73.lr.ph.i ], [ %.lcssa76.i, %.loopexit96.i ]
  %69 = phi <2 x i64> [ zeroinitializer, %.preheader73.lr.ph.i ], [ %.lcssa75.i, %.loopexit96.i ]
  %70 = phi <2 x i64> [ zeroinitializer, %.preheader73.lr.ph.i ], [ %.lcssa74.i, %.loopexit96.i ]
  br i1 %62, label %.preheader73.split.us.i, label %.preheader73..preheader73.split_crit_edge.i

.preheader73.split.us.i:                          ; preds = %510, %.preheader73.i
  %indvars.iv160.i = phi i64 [ %indvars.iv.next161.i, %510 ], [ 0, %.preheader73.i ]
  %71 = phi <2 x i64> [ %432, %510 ], [ %65, %.preheader73.i ]
  %72 = phi <2 x i64> [ %448, %510 ], [ %66, %.preheader73.i ]
  %73 = phi <2 x i64> [ %455, %510 ], [ %67, %.preheader73.i ]
  %74 = phi <2 x i64> [ %462, %510 ], [ %68, %.preheader73.i ]
  %75 = phi <2 x i64> [ %478, %510 ], [ %69, %.preheader73.i ]
  %76 = phi <2 x i64> [ %512, %510 ], [ %70, %.preheader73.i ]
  %77 = shl nsw i64 %indvars.iv160.i, 7
  %78 = getelementptr inbounds [1920 x i8]* %src_buffer.i, i64 0, i64 %77
  %79 = bitcast i8* %78 to <2 x i64>*
  %.sum28.us.i = or i64 %77, 112
  %80 = getelementptr inbounds [1920 x i8]* %src_buffer.i, i64 0, i64 %.sum28.us.i
  %81 = bitcast i8* %80 to <2 x i64>*
  %82 = load <2 x i64>* %81, align 16, !tbaa !1
  %.sum29.us.i = or i64 %77, 96
  %83 = getelementptr inbounds [1920 x i8]* %src_buffer.i, i64 0, i64 %.sum29.us.i
  %84 = bitcast i8* %83 to <2 x i64>*
  %85 = load <2 x i64>* %84, align 16, !tbaa !1
  %86 = bitcast <2 x i64> %82 to <8 x i16>

  %87 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %86, i32 8)

  ;comments from huangkai

  %88 = bitcast <2 x i64> %85 to <8 x i16>

  %89 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %88, i32 8) 

  %90 = call <16 x i8> @llvm_x86_sse2_packuswb_128(<8 x i16> %89, <8 x i16> %87) #2

  %91 = bitcast <16 x i8> %90 to <2 x i64>
  %92 = and <2 x i64> %82, <i64 71777214294589695, i64 71777214294589695>
  %93 = and <2 x i64> %85, <i64 71777214294589695, i64 71777214294589695>
  %94 = bitcast <2 x i64> %93 to <8 x i16>
  %95 = bitcast <2 x i64> %92 to <8 x i16>

  %96 = call <16 x i8> @llvm_x86_sse2_packuswb_128(<8 x i16> %94, <8 x i16> %95) #2

  %97 = bitcast <16 x i8> %96 to <2 x i64>
  %98 = bitcast <16 x i8> %96 to <8 x i16>

  %99 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %98, i32 1)

  %100 = bitcast <8 x i16> %99 to <2 x i64>
  %101 = and <2 x i64> %91, <i64 -6148914691236517206, i64 -6148914691236517206>
  %102 = and <2 x i64> %100, <i64 6148914691236517205, i64 6148914691236517205>
  %103 = or <2 x i64> %101, %102
  %104 = bitcast <16 x i8> %90 to <8 x i16>

  %105 = call <8 x i16> @llvm_x86_sse2_pslli_w(<8 x i16> %104, i32 1)


  %106 = bitcast <8 x i16> %105 to <2 x i64>
  %107 = and <2 x i64> %106, <i64 -6148914691236517206, i64 -6148914691236517206>
  %108 = and <2 x i64> %97, <i64 6148914691236517205, i64 6148914691236517205>
  %109 = or <2 x i64> %107, %108
  %.sum30.us.i = or i64 %77, 80
  %110 = getelementptr inbounds [1920 x i8]* %src_buffer.i, i64 0, i64 %.sum30.us.i
  %111 = bitcast i8* %110 to <2 x i64>*
  %112 = load <2 x i64>* %111, align 16, !tbaa !1
  %.sum31.us.i = or i64 %77, 64
  %113 = getelementptr inbounds [1920 x i8]* %src_buffer.i, i64 0, i64 %.sum31.us.i
  %114 = bitcast i8* %113 to <2 x i64>*
  %115 = load <2 x i64>* %114, align 16, !tbaa !1
  %116 = bitcast <2 x i64> %112 to <8 x i16>

  %117 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %116, i32 8) #2

  %118 = bitcast <2 x i64> %115 to <8 x i16>

  %119 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %118, i32 8) #2

  %120 = call <16 x i8> @llvm_x86_sse2_packuswb_128(<8 x i16> %119, <8 x i16> %117) #2

  %121 = bitcast <16 x i8> %120 to <2 x i64>
  %122 = and <2 x i64> %112, <i64 71777214294589695, i64 71777214294589695>
  %123 = and <2 x i64> %115, <i64 71777214294589695, i64 71777214294589695>
  %124 = bitcast <2 x i64> %123 to <8 x i16>
  %125 = bitcast <2 x i64> %122 to <8 x i16>
  %126 = call <16 x i8> @llvm_x86_sse2_packuswb_128(<8 x i16> %124, <8 x i16> %125) #2
  %127 = bitcast <16 x i8> %126 to <2 x i64>
  %128 = bitcast <16 x i8> %126 to <8 x i16>
  %129 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %128, i32 1) #2
  %130 = bitcast <8 x i16> %129 to <2 x i64>
  %131 = and <2 x i64> %121, <i64 -6148914691236517206, i64 -6148914691236517206>
  %132 = and <2 x i64> %130, <i64 6148914691236517205, i64 6148914691236517205>
  %133 = or <2 x i64> %131, %132
  %134 = bitcast <16 x i8> %120 to <8 x i16>
  %135 = call <8 x i16> @llvm_x86_sse2_pslli_w(<8 x i16> %134, i32 1) #2
  %136 = bitcast <8 x i16> %135 to <2 x i64>
  %137 = and <2 x i64> %136, <i64 -6148914691236517206, i64 -6148914691236517206>
  %138 = and <2 x i64> %127, <i64 6148914691236517205, i64 6148914691236517205>
  %139 = or <2 x i64> %137, %138
  %.sum32.us.i = or i64 %77, 48
  %140 = getelementptr inbounds [1920 x i8]* %src_buffer.i, i64 0, i64 %.sum32.us.i
  %141 = bitcast i8* %140 to <2 x i64>*
  %142 = load <2 x i64>* %141, align 16, !tbaa !1
  %.sum33.us.i = or i64 %77, 32
  %143 = getelementptr inbounds [1920 x i8]* %src_buffer.i, i64 0, i64 %.sum33.us.i
  %144 = bitcast i8* %143 to <2 x i64>*
  %145 = load <2 x i64>* %144, align 16, !tbaa !1
  %146 = bitcast <2 x i64> %142 to <8 x i16>
  %147 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %146, i32 8) #2
  %148 = bitcast <2 x i64> %145 to <8 x i16>
  %149 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %148, i32 8) #2
  %150 = call <16 x i8> @llvm_x86_sse2_packuswb_128(<8 x i16> %149, <8 x i16> %147) #2
  %151 = bitcast <16 x i8> %150 to <2 x i64>
  %152 = and <2 x i64> %142, <i64 71777214294589695, i64 71777214294589695>
  %153 = and <2 x i64> %145, <i64 71777214294589695, i64 71777214294589695>
  %154 = bitcast <2 x i64> %153 to <8 x i16>
  %155 = bitcast <2 x i64> %152 to <8 x i16>
  %156 = call <16 x i8> @llvm_x86_sse2_packuswb_128(<8 x i16> %154, <8 x i16> %155) #2
  %157 = bitcast <16 x i8> %156 to <2 x i64>
  %158 = bitcast <16 x i8> %156 to <8 x i16>
  %159 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %158, i32 1) #2
  %160 = bitcast <8 x i16> %159 to <2 x i64>
  %161 = and <2 x i64> %151, <i64 -6148914691236517206, i64 -6148914691236517206>
  %162 = and <2 x i64> %160, <i64 6148914691236517205, i64 6148914691236517205>
  %163 = or <2 x i64> %161, %162
  %164 = bitcast <16 x i8> %150 to <8 x i16>
  %165 = call <8 x i16> @llvm_x86_sse2_pslli_w(<8 x i16> %164, i32 1) #2
  %166 = bitcast <8 x i16> %165 to <2 x i64>
  %167 = and <2 x i64> %166, <i64 -6148914691236517206, i64 -6148914691236517206>
  %168 = and <2 x i64> %157, <i64 6148914691236517205, i64 6148914691236517205>
  %169 = or <2 x i64> %167, %168
  %.sum34.us.i = or i64 %77, 16
  %170 = getelementptr inbounds [1920 x i8]* %src_buffer.i, i64 0, i64 %.sum34.us.i
  %171 = bitcast i8* %170 to <2 x i64>*
  %172 = load <2 x i64>* %171, align 16, !tbaa !1
  %173 = load <2 x i64>* %79, align 16, !tbaa !1
  %174 = bitcast <2 x i64> %172 to <8 x i16>
  %175 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %174, i32 8) #2
  %176 = bitcast <2 x i64> %173 to <8 x i16>
  %177 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %176, i32 8) #2
  %178 = call <16 x i8> @llvm_x86_sse2_packuswb_128(<8 x i16> %177, <8 x i16> %175) #2
  %179 = bitcast <16 x i8> %178 to <2 x i64>
  %180 = and <2 x i64> %172, <i64 71777214294589695, i64 71777214294589695>
  %181 = and <2 x i64> %173, <i64 71777214294589695, i64 71777214294589695>
  %182 = bitcast <2 x i64> %181 to <8 x i16>
  %183 = bitcast <2 x i64> %180 to <8 x i16>
  %184 = call <16 x i8> @llvm_x86_sse2_packuswb_128(<8 x i16> %182, <8 x i16> %183) #2
  %185 = bitcast <16 x i8> %184 to <2 x i64>
  %186 = bitcast <16 x i8> %184 to <8 x i16>
  %187 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %186, i32 1) #2
  %188 = bitcast <8 x i16> %187 to <2 x i64>
  %189 = and <2 x i64> %179, <i64 -6148914691236517206, i64 -6148914691236517206>
  %190 = and <2 x i64> %188, <i64 6148914691236517205, i64 6148914691236517205>
  %191 = or <2 x i64> %189, %190
  %192 = bitcast <16 x i8> %178 to <8 x i16>
  %193 = call <8 x i16> @llvm_x86_sse2_pslli_w(<8 x i16> %192, i32 1) #2
  %194 = bitcast <8 x i16> %193 to <2 x i64>
  %195 = and <2 x i64> %194, <i64 -6148914691236517206, i64 -6148914691236517206>
  %196 = and <2 x i64> %185, <i64 6148914691236517205, i64 6148914691236517205>
  %197 = or <2 x i64> %195, %196
  %198 = bitcast <2 x i64> %103 to <8 x i16>
  %199 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %198, i32 8) #2
  %200 = bitcast <2 x i64> %133 to <8 x i16>
  %201 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %200, i32 8) #2
  %202 = call <16 x i8> @llvm_x86_sse2_packuswb_128(<8 x i16> %201, <8 x i16> %199) #2
  %203 = bitcast <16 x i8> %202 to <2 x i64>
  %204 = and <2 x i64> %103, <i64 71777214294589695, i64 71777214294589695>
  %205 = and <2 x i64> %133, <i64 71777214294589695, i64 71777214294589695>
  %206 = bitcast <2 x i64> %205 to <8 x i16>
  %207 = bitcast <2 x i64> %204 to <8 x i16>
  %208 = call <16 x i8> @llvm_x86_sse2_packuswb_128(<8 x i16> %206, <8 x i16> %207) #2
  %209 = bitcast <16 x i8> %208 to <2 x i64>
  %210 = bitcast <16 x i8> %208 to <8 x i16>
  %211 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %210, i32 2) #2
  %212 = bitcast <8 x i16> %211 to <2 x i64>
  %213 = and <2 x i64> %203, <i64 -3689348814741910324, i64 -3689348814741910324>
  %214 = and <2 x i64> %212, <i64 3689348814741910323, i64 3689348814741910323>
  %215 = or <2 x i64> %213, %214
  %216 = bitcast <16 x i8> %202 to <8 x i16>
  %217 = call <8 x i16> @llvm_x86_sse2_pslli_w(<8 x i16> %216, i32 2) #2
  %218 = bitcast <8 x i16> %217 to <2 x i64>
  %219 = and <2 x i64> %218, <i64 -3689348814741910324, i64 -3689348814741910324>
  %220 = and <2 x i64> %209, <i64 3689348814741910323, i64 3689348814741910323>
  %221 = or <2 x i64> %219, %220
  %222 = bitcast <2 x i64> %163 to <8 x i16>
  %223 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %222, i32 8) #2
  %224 = bitcast <2 x i64> %191 to <8 x i16>
  %225 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %224, i32 8) #2
  %226 = call <16 x i8> @llvm_x86_sse2_packuswb_128(<8 x i16> %225, <8 x i16> %223) #2
  %227 = bitcast <16 x i8> %226 to <2 x i64>
  %228 = and <2 x i64> %163, <i64 71777214294589695, i64 71777214294589695>
  %229 = and <2 x i64> %191, <i64 71777214294589695, i64 71777214294589695>
  %230 = bitcast <2 x i64> %229 to <8 x i16>
  %231 = bitcast <2 x i64> %228 to <8 x i16>
  %232 = call <16 x i8> @llvm_x86_sse2_packuswb_128(<8 x i16> %230, <8 x i16> %231) #2
  %233 = bitcast <16 x i8> %232 to <2 x i64>
  %234 = bitcast <16 x i8> %232 to <8 x i16>
  %235 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %234, i32 2) #2
  %236 = bitcast <8 x i16> %235 to <2 x i64>
  %237 = and <2 x i64> %227, <i64 -3689348814741910324, i64 -3689348814741910324>
  %238 = and <2 x i64> %236, <i64 3689348814741910323, i64 3689348814741910323>
  %239 = or <2 x i64> %237, %238
  %240 = bitcast <16 x i8> %226 to <8 x i16>
  %241 = call <8 x i16> @llvm_x86_sse2_pslli_w(<8 x i16> %240, i32 2) #2
  %242 = bitcast <8 x i16> %241 to <2 x i64>
  %243 = and <2 x i64> %242, <i64 -3689348814741910324, i64 -3689348814741910324>
  %244 = and <2 x i64> %233, <i64 3689348814741910323, i64 3689348814741910323>
  %245 = or <2 x i64> %243, %244
  %246 = bitcast <2 x i64> %109 to <8 x i16>
  %247 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %246, i32 8) #2
  %248 = bitcast <2 x i64> %139 to <8 x i16>
  %249 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %248, i32 8) #2
  %250 = call <16 x i8> @llvm_x86_sse2_packuswb_128(<8 x i16> %249, <8 x i16> %247) #2
  %251 = bitcast <16 x i8> %250 to <2 x i64>
  %252 = and <2 x i64> %109, <i64 71777214294589695, i64 71777214294589695>
  %253 = and <2 x i64> %139, <i64 71777214294589695, i64 71777214294589695>
  %254 = bitcast <2 x i64> %253 to <8 x i16>
  %255 = bitcast <2 x i64> %252 to <8 x i16>
  %256 = call <16 x i8> @llvm_x86_sse2_packuswb_128(<8 x i16> %254, <8 x i16> %255) #2
  %257 = bitcast <16 x i8> %256 to <2 x i64>
  %258 = bitcast <16 x i8> %256 to <8 x i16>
  %259 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %258, i32 2) #2
  %260 = bitcast <8 x i16> %259 to <2 x i64>
  %261 = and <2 x i64> %251, <i64 -3689348814741910324, i64 -3689348814741910324>
  %262 = and <2 x i64> %260, <i64 3689348814741910323, i64 3689348814741910323>
  %263 = or <2 x i64> %261, %262
  %264 = bitcast <16 x i8> %250 to <8 x i16>
  %265 = call <8 x i16> @llvm_x86_sse2_pslli_w(<8 x i16> %264, i32 2) #2
  %266 = bitcast <8 x i16> %265 to <2 x i64>
  %267 = and <2 x i64> %266, <i64 -3689348814741910324, i64 -3689348814741910324>
  %268 = and <2 x i64> %257, <i64 3689348814741910323, i64 3689348814741910323>
  %269 = or <2 x i64> %267, %268
  %270 = bitcast <2 x i64> %169 to <8 x i16>
  %271 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %270, i32 8) #2
  %272 = bitcast <2 x i64> %197 to <8 x i16>
  %273 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %272, i32 8) #2
  %274 = call <16 x i8> @llvm_x86_sse2_packuswb_128(<8 x i16> %273, <8 x i16> %271) #2
  %275 = bitcast <16 x i8> %274 to <2 x i64>
  %276 = and <2 x i64> %169, <i64 71777214294589695, i64 71777214294589695>
  %277 = and <2 x i64> %197, <i64 71777214294589695, i64 71777214294589695>
  %278 = bitcast <2 x i64> %277 to <8 x i16>
  %279 = bitcast <2 x i64> %276 to <8 x i16>
  %280 = call <16 x i8> @llvm_x86_sse2_packuswb_128(<8 x i16> %278, <8 x i16> %279) #2
  %281 = bitcast <16 x i8> %280 to <2 x i64>
  %282 = bitcast <16 x i8> %280 to <8 x i16>
  %283 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %282, i32 2) #2
  %284 = bitcast <8 x i16> %283 to <2 x i64>
  %285 = and <2 x i64> %275, <i64 -3689348814741910324, i64 -3689348814741910324>
  %286 = and <2 x i64> %284, <i64 3689348814741910323, i64 3689348814741910323>
  %287 = or <2 x i64> %285, %286
  %288 = bitcast <16 x i8> %274 to <8 x i16>
  %289 = call <8 x i16> @llvm_x86_sse2_pslli_w(<8 x i16> %288, i32 2) #2
  %290 = bitcast <8 x i16> %289 to <2 x i64>
  %291 = and <2 x i64> %290, <i64 -3689348814741910324, i64 -3689348814741910324>
  %292 = and <2 x i64> %281, <i64 3689348814741910323, i64 3689348814741910323>
  %293 = or <2 x i64> %291, %292
  %294 = bitcast <2 x i64> %215 to <8 x i16>
  %295 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %294, i32 8) #2
  %296 = bitcast <2 x i64> %239 to <8 x i16>
  %297 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %296, i32 8) #2
  %298 = call <16 x i8> @llvm_x86_sse2_packuswb_128(<8 x i16> %297, <8 x i16> %295) #2
  %299 = bitcast <16 x i8> %298 to <2 x i64>
  %300 = and <2 x i64> %215, <i64 71777214294589695, i64 71777214294589695>
  %301 = and <2 x i64> %239, <i64 71777214294589695, i64 71777214294589695>
  %302 = bitcast <2 x i64> %301 to <8 x i16>
  %303 = bitcast <2 x i64> %300 to <8 x i16>
  %304 = call <16 x i8> @llvm_x86_sse2_packuswb_128(<8 x i16> %302, <8 x i16> %303) #2
  %305 = bitcast <16 x i8> %304 to <2 x i64>
  %306 = bitcast <16 x i8> %304 to <8 x i16>
  %307 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %306, i32 4) #2
  %308 = bitcast <8 x i16> %307 to <2 x i64>
  %309 = and <2 x i64> %299, <i64 -1085102592571150096, i64 -1085102592571150096>
  %310 = and <2 x i64> %308, <i64 1085102592571150095, i64 1085102592571150095>
  %311 = or <2 x i64> %309, %310
  %312 = bitcast <16 x i8> %298 to <8 x i16>
  %313 = call <8 x i16> @llvm_x86_sse2_pslli_w(<8 x i16> %312, i32 4) #2
  %314 = bitcast <8 x i16> %313 to <2 x i64>
  %315 = and <2 x i64> %314, <i64 -1085102592571150096, i64 -1085102592571150096>
  %316 = and <2 x i64> %305, <i64 1085102592571150095, i64 1085102592571150095>
  %317 = or <2 x i64> %315, %316
  %318 = bitcast <2 x i64> %263 to <8 x i16>
  %319 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %318, i32 8) #2
  %320 = bitcast <2 x i64> %287 to <8 x i16>
  %321 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %320, i32 8) #2
  %322 = call <16 x i8> @llvm_x86_sse2_packuswb_128(<8 x i16> %321, <8 x i16> %319) #2
  %323 = bitcast <16 x i8> %322 to <2 x i64>
  %324 = and <2 x i64> %263, <i64 71777214294589695, i64 71777214294589695>
  %325 = and <2 x i64> %287, <i64 71777214294589695, i64 71777214294589695>
  %326 = bitcast <2 x i64> %325 to <8 x i16>
  %327 = bitcast <2 x i64> %324 to <8 x i16>
  %328 = call <16 x i8> @llvm_x86_sse2_packuswb_128(<8 x i16> %326, <8 x i16> %327) #2
  %329 = bitcast <16 x i8> %328 to <2 x i64>
  %330 = bitcast <16 x i8> %328 to <8 x i16>
  %331 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %330, i32 4) #2
  %332 = bitcast <8 x i16> %331 to <2 x i64>
  %333 = and <2 x i64> %323, <i64 -1085102592571150096, i64 -1085102592571150096>
  %334 = and <2 x i64> %332, <i64 1085102592571150095, i64 1085102592571150095>
  %335 = or <2 x i64> %333, %334
  %336 = bitcast <16 x i8> %322 to <8 x i16>
  %337 = call <8 x i16> @llvm_x86_sse2_pslli_w(<8 x i16> %336, i32 4) #2
  %338 = bitcast <8 x i16> %337 to <2 x i64>
  %339 = and <2 x i64> %338, <i64 -1085102592571150096, i64 -1085102592571150096>
  %340 = and <2 x i64> %329, <i64 1085102592571150095, i64 1085102592571150095>
  %341 = or <2 x i64> %339, %340
  %342 = bitcast <2 x i64> %221 to <8 x i16>
  %343 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %342, i32 8) #2
  %344 = bitcast <2 x i64> %245 to <8 x i16>
  %345 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %344, i32 8) #2
  %346 = call <16 x i8> @llvm_x86_sse2_packuswb_128(<8 x i16> %345, <8 x i16> %343) #2
  %347 = bitcast <16 x i8> %346 to <2 x i64>
  %348 = and <2 x i64> %221, <i64 71777214294589695, i64 71777214294589695>
  %349 = and <2 x i64> %245, <i64 71777214294589695, i64 71777214294589695>
  %350 = bitcast <2 x i64> %349 to <8 x i16>
  %351 = bitcast <2 x i64> %348 to <8 x i16>
  %352 = call <16 x i8> @llvm_x86_sse2_packuswb_128(<8 x i16> %350, <8 x i16> %351) #2
  %353 = bitcast <16 x i8> %352 to <2 x i64>
  %354 = bitcast <16 x i8> %352 to <8 x i16>
  %355 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %354, i32 4) #2
  %356 = bitcast <8 x i16> %355 to <2 x i64>
  %357 = and <2 x i64> %347, <i64 -1085102592571150096, i64 -1085102592571150096>
  %358 = and <2 x i64> %356, <i64 1085102592571150095, i64 1085102592571150095>
  %359 = or <2 x i64> %357, %358
  %360 = bitcast <16 x i8> %346 to <8 x i16>
  %361 = call <8 x i16> @llvm_x86_sse2_pslli_w(<8 x i16> %360, i32 4) #2
  %362 = bitcast <8 x i16> %361 to <2 x i64>
  %363 = and <2 x i64> %362, <i64 -1085102592571150096, i64 -1085102592571150096>
  %364 = and <2 x i64> %353, <i64 1085102592571150095, i64 1085102592571150095>
  %365 = or <2 x i64> %363, %364
  %366 = bitcast <2 x i64> %269 to <8 x i16>
  %367 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %366, i32 8) #2
  %368 = bitcast <2 x i64> %293 to <8 x i16>
  %369 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %368, i32 8) #2
  %370 = call <16 x i8> @llvm_x86_sse2_packuswb_128(<8 x i16> %369, <8 x i16> %367) #2
  %371 = bitcast <16 x i8> %370 to <2 x i64>
  %372 = and <2 x i64> %269, <i64 71777214294589695, i64 71777214294589695>
  %373 = and <2 x i64> %293, <i64 71777214294589695, i64 71777214294589695>
  %374 = bitcast <2 x i64> %373 to <8 x i16>
  %375 = bitcast <2 x i64> %372 to <8 x i16>
  %376 = call <16 x i8> @llvm_x86_sse2_packuswb_128(<8 x i16> %374, <8 x i16> %375) #2
  %377 = bitcast <16 x i8> %376 to <2 x i64>
  %378 = bitcast <16 x i8> %376 to <8 x i16>
  %379 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %378, i32 4) #2
  %380 = bitcast <8 x i16> %379 to <2 x i64>
  %381 = and <2 x i64> %371, <i64 -1085102592571150096, i64 -1085102592571150096>
  %382 = and <2 x i64> %380, <i64 1085102592571150095, i64 1085102592571150095>
  %383 = or <2 x i64> %381, %382
  %384 = bitcast <16 x i8> %370 to <8 x i16>
  %385 = call <8 x i16> @llvm_x86_sse2_pslli_w(<8 x i16> %384, i32 4) #2
  %386 = bitcast <8 x i16> %385 to <2 x i64>
  %387 = and <2 x i64> %386, <i64 -1085102592571150096, i64 -1085102592571150096>
  %388 = and <2 x i64> %377, <i64 1085102592571150095, i64 1085102592571150095>
  %389 = or <2 x i64> %387, %388
  %390 = or <2 x i64> %311, %335
  %391 = or <2 x i64> %359, %383
  %392 = or <2 x i64> %390, %391
  %393 = or <2 x i64> %341, %365
  %394 = and <2 x i64> %317, %393
  %395 = or <2 x i64> %392, %394
  %396 = or <2 x i64> %390, %359
  %397 = and <2 x i64> %365, %389
  %398 = or <2 x i64> %341, %397
  %399 = and <2 x i64> %317, %398
  %400 = or <2 x i64> %383, %399
  %.not.i8.us.i = xor <2 x i64> %400, <i64 -1, i64 -1>
  %401 = or <2 x i64> %396, %.not.i8.us.i
  %402 = and <2 x i64> %401, %395
  %403 = xor <2 x i64> %390, <i64 -1, i64 -1>
  %404 = and <2 x i64> %359, %403
  %405 = or <2 x i64> %317, %341
  %406 = or <2 x i64> %365, %389
  %407 = or <2 x i64> %405, %406
  %408 = or <2 x i64> %383, %407
  %409 = and <2 x i64> %404, %408
  %410 = or <2 x i64> %391, %407
  %411 = and <2 x i64> %335, %410
  %412 = or <2 x i64> %311, %411
  %.not2.i9.us.i = xor <2 x i64> %402, <i64 -1, i64 -1>
  %.not1.i10.us.i = or <2 x i64> %409, %.not2.i9.us.i
  %413 = or <2 x i64> %412, %.not1.i10.us.i
  %414 = xor <2 x i64> %311, <i64 -1, i64 -1>
  %415 = and <2 x i64> %335, %414
  %416 = xor <2 x i64> %391, <i64 -1, i64 -1>
  %417 = and <2 x i64> %415, %416
  %418 = xor <2 x i64> %407, <i64 -1, i64 -1>
  %419 = and <2 x i64> %417, %418
  %420 = xor <2 x i64> %341, <i64 -1, i64 -1>
  %421 = and <2 x i64> %317, %420
  %422 = xor <2 x i64> %389, <i64 -1, i64 -1>
  %423 = and <2 x i64> %365, %422
  %424 = and <2 x i64> %421, %423
  %425 = xor <2 x i64> %392, <i64 -1, i64 -1>
  %426 = and <2 x i64> %424, %425

  %427 = call <2 x i64> @llvm_x86_sse2_psrli_q(<2 x i64> %413, i32 63)

  %428 = shufflevector <2 x i64> %71, <2 x i64> %427, <2 x i32> <i32 0, i32 2>
  %429 = shl <2 x i64> %413, <i64 1, i64 1>
  %430 = or <2 x i64> %429, %428
  %431 = call <2 x i64> @llvm_x86_sse2_psrl_dq(<2 x i64> %413, i32 64) #2

  %432 = call <2 x i64> @llvm_x86_sse2_psrli_q(<2 x i64> %431, i32 63)

  %433 = and <2 x i64> %413, %430
  %434 = add <2 x i64> %433, %413
  %435 = add <2 x i64> %434, %72
  %436 = xor <2 x i64> %435, <i64 -1, i64 -1>
  %437 = and <2 x i64> %413, %436
  %438 = or <2 x i64> %433, %437
  %439 = call <2 x i64> @llvm_x86_sse2_psrli_q(<2 x i64> %438, i32 63) #2
  %440 = call <2 x i64> @llvm_x86_sse2_psll_dq(<2 x i64> %439, i32 64) #2
  %441 = add <2 x i64> %440, %435
  %442 = xor <2 x i64> %441, <i64 -1, i64 -1>
  %443 = and <2 x i64> %413, %442
  %444 = or <2 x i64> %433, %443
  %445 = xor <2 x i64> %441, %413
  %446 = or <2 x i64> %445, %430
  %447 = call <2 x i64> @llvm_x86_sse2_psrl_dq(<2 x i64> %444, i32 64) #2
  %448 = call <2 x i64> @llvm_x86_sse2_psrli_q(<2 x i64> %447, i32 63) #2
  %449 = and <2 x i64> %446, %419
  %450 = call <2 x i64> @llvm_x86_sse2_psrli_q(<2 x i64> %449, i32 63) #2
  %451 = shufflevector <2 x i64> %73, <2 x i64> %450, <2 x i32> <i32 0, i32 2>
  %452 = shl <2 x i64> %449, <i64 1, i64 1>
  %453 = or <2 x i64> %452, %451
  %454 = call <2 x i64> @llvm_x86_sse2_psrl_dq(<2 x i64> %449, i32 64) #2
  %455 = call <2 x i64> @llvm_x86_sse2_psrli_q(<2 x i64> %454, i32 63) #2
  %456 = and <2 x i64> %453, %413
  %457 = call <2 x i64> @llvm_x86_sse2_psrli_q(<2 x i64> %456, i32 63) #2
  %458 = shufflevector <2 x i64> %74, <2 x i64> %457, <2 x i32> <i32 0, i32 2>
  %459 = shl <2 x i64> %456, <i64 1, i64 1>
  %460 = or <2 x i64> %459, %458
  %461 = call <2 x i64> @llvm_x86_sse2_psrl_dq(<2 x i64> %456, i32 64) #2
  %462 = call <2 x i64> @llvm_x86_sse2_psrli_q(<2 x i64> %461, i32 63) #2
  %463 = and <2 x i64> %413, %460
  %464 = add <2 x i64> %463, %413
  %465 = add <2 x i64> %464, %75
  %466 = xor <2 x i64> %465, <i64 -1, i64 -1>
  %467 = and <2 x i64> %413, %466
  %468 = or <2 x i64> %463, %467
  %469 = call <2 x i64> @llvm_x86_sse2_psrli_q(<2 x i64> %468, i32 63) #2
  %470 = call <2 x i64> @llvm_x86_sse2_psll_dq(<2 x i64> %469, i32 64) #2
  %471 = add <2 x i64> %470, %465
  %472 = xor <2 x i64> %471, <i64 -1, i64 -1>
  %473 = and <2 x i64> %413, %472
  %474 = or <2 x i64> %463, %473
  %475 = xor <2 x i64> %471, %413
  %476 = or <2 x i64> %475, %460
  %477 = call <2 x i64> @llvm_x86_sse2_psrl_dq(<2 x i64> %474, i32 64) #2
  %478 = call <2 x i64> @llvm_x86_sse2_psrli_q(<2 x i64> %477, i32 63) #2
  %479 = bitcast <2 x i64> %476 to <16 x i8>
  %480 = icmp eq <16 x i8> %479, zeroinitializer
  %481 = sext <16 x i1> %480 to <16 x i8>
  %482 = call i32 @llvm_x86_sse2_pmovmskb_128(<16 x i8> %481) #2
  %483 = trunc i32 %482 to i16
  %484 = icmp eq i16 %483, -1
  br i1 %484, label %485, label %._crit_edge.i6.us.i

; <label>:485                                     ; preds = %.preheader73.split.us.i
  %486 = bitcast <2 x i64> %76 to <16 x i8>
  %487 = icmp eq <16 x i8> %486, zeroinitializer
  %488 = sext <16 x i1> %487 to <16 x i8>
  %489 = call i32 @llvm_x86_sse2_pmovmskb_128(<16 x i8> %488) #2
  %490 = trunc i32 %489 to i16
  %491 = icmp eq i16 %490, -1
  br i1 %491, label %510, label %._crit_edge.i6.us.i

._crit_edge.i6.us.i:                              ; preds = %485, %.preheader73.split.us.i
  %.not35.us.i = xor <2 x i64> %424, <i64 -1, i64 -1>
  %492 = or <2 x i64> %392, %.not35.us.i
  %493 = and <2 x i64> %476, %492
  %494 = add <2 x i64> %493, %492
  %495 = add <2 x i64> %494, %76
  %496 = xor <2 x i64> %495, <i64 -1, i64 -1>
  %497 = and <2 x i64> %492, %496
  %498 = or <2 x i64> %493, %497
  %499 = call <2 x i64> @llvm_x86_sse2_psrli_q(<2 x i64> %498, i32 63) #2
  %500 = call <2 x i64> @llvm_x86_sse2_psll_dq(<2 x i64> %499, i32 64) #2
  %501 = add <2 x i64> %500, %495
  %502 = xor <2 x i64> %501, <i64 -1, i64 -1>
  %503 = and <2 x i64> %492, %502
  %504 = or <2 x i64> %493, %503
  %505 = xor <2 x i64> %501, %492
  %506 = or <2 x i64> %505, %476
  %507 = call <2 x i64> @llvm_x86_sse2_psrl_dq(<2 x i64> %504, i32 64) #2
  %508 = call <2 x i64> @llvm_x86_sse2_psrli_q(<2 x i64> %507, i32 63) #2
  %509 = and <2 x i64> %506, %426
  br label %510

; <label>:510                                     ; preds = %._crit_edge.i6.us.i, %485
  %511 = phi <2 x i64> [ zeroinitializer, %485 ], [ %509, %._crit_edge.i6.us.i ]
  %512 = phi <2 x i64> [ %76, %485 ], [ %508, %._crit_edge.i6.us.i ]
  %513 = getelementptr inbounds %class.BitStreamScanner* %LF_scanner.i, i64 0, i32 0, i32 0, i64 %indvars.iv160.i
  store <2 x i64> %426, <2 x i64>* %513, align 16, !tbaa !1
  %514 = bitcast <2 x i64> %426 to <4 x i32>
  %515 = icmp eq <4 x i32> %514, zeroinitializer
  %516 = sext <4 x i1> %515 to <4 x i32>
  %517 = bitcast <4 x i32> %516 to <2 x i64>
  %518 = call <2 x i64> @llvm_x86_sse2_psrli_q(<2 x i64> %517, i32 32) #2
  %519 = and <2 x i64> %517, %518
  %520 = call <2 x i64> @llvm_x86_sse2_pslli_q(<2 x i64> %519, i32 32) #2
  %521 = or <2 x i64> %519, %520
  %522 = xor <2 x i64> %521, <i64 -1, i64 -1>
  %523 = bitcast <2 x i64> %522 to <2 x double>
  %524 = call i32 @llvm_x86_sse2_movmsk_pd(<2 x double> %523) #2
  %525 = zext i32 %524 to i64
  %526 = and i64 %525, 255
  %527 = shl nsw i64 %indvars.iv160.i, 1
  %528 = shl i64 %526, %527
  %529 = load i64* %60, align 16, !tbaa !4
  %530 = add i64 %528, %529
  store i64 %530, i64* %60, align 16, !tbaa !4
  %531 = getelementptr inbounds %class.BitStreamScanner* %match_scanner.i, i64 0, i32 0, i32 0, i64 %indvars.iv160.i
  store <2 x i64> %511, <2 x i64>* %531, align 16, !tbaa !1
  %532 = bitcast <2 x i64> %511 to <4 x i32>
  %533 = icmp eq <4 x i32> %532, zeroinitializer
  %534 = sext <4 x i1> %533 to <4 x i32>
  %535 = bitcast <4 x i32> %534 to <2 x i64>
  %536 = call <2 x i64> @llvm_x86_sse2_psrli_q(<2 x i64> %535, i32 32) #2
  %537 = and <2 x i64> %535, %536
  %538 = call <2 x i64> @llvm_x86_sse2_pslli_q(<2 x i64> %537, i32 32) #2
  %539 = or <2 x i64> %537, %538
  %540 = xor <2 x i64> %539, <i64 -1, i64 -1>
  %541 = bitcast <2 x i64> %540 to <2 x double>
  %542 = call i32 @llvm_x86_sse2_movmsk_pd(<2 x double> %541) #2
  %543 = zext i32 %542 to i64
  %544 = and i64 %543, 255
  %545 = shl i64 %544, %527
  %546 = load i64* %61, align 16, !tbaa !4
  %547 = add i64 %545, %546
  store i64 %547, i64* %61, align 16, !tbaa !4
  %indvars.iv.next161.i = add i64 %indvars.iv160.i, 1
  %lftr.wideiv76 = trunc i64 %indvars.iv.next161.i to i32
  %exitcond77 = icmp eq i32 %lftr.wideiv76, 15
  br i1 %exitcond77, label %.us-lcssa.us.i, label %.preheader73.split.us.i

.preheader49.i:                                   ; preds = %.loopexit96.i, %_ZL22set_processor_affinitym.exit
  %match_vector.0.lcssa.i = phi <2 x i64> [ zeroinitializer, %_ZL22set_processor_affinitym.exit ], [ %match_vector.1.lcssa.i, %.loopexit96.i ]
  %match_count.0.lcssa.i = phi i32 [ 0, %_ZL22set_processor_affinitym.exit ], [ %match_count.1.lcssa.i, %.loopexit96.i ]
  %chars_avail.0.lcssa.i = phi i32 [ %58, %_ZL22set_processor_affinitym.exit ], [ %1680, %.loopexit96.i ]
  %.lcssa105.i = phi <2 x i64> [ zeroinitializer, %_ZL22set_processor_affinitym.exit ], [ %.lcssa79.i, %.loopexit96.i ]
  %.lcssa104.i = phi <2 x i64> [ zeroinitializer, %_ZL22set_processor_affinitym.exit ], [ %.lcssa78.i, %.loopexit96.i ]
  %.lcssa103.i = phi <2 x i64> [ zeroinitializer, %_ZL22set_processor_affinitym.exit ], [ %.lcssa77.i, %.loopexit96.i ]
  %.lcssa102.i = phi <2 x i64> [ zeroinitializer, %_ZL22set_processor_affinitym.exit ], [ %.lcssa76.i, %.loopexit96.i ]
  %.lcssa101.i = phi <2 x i64> [ zeroinitializer, %_ZL22set_processor_affinitym.exit ], [ %.lcssa75.i, %.loopexit96.i ]
  %.lcssa100.i = phi <2 x i64> [ zeroinitializer, %_ZL22set_processor_affinitym.exit ], [ %.lcssa74.i, %.loopexit96.i ]
  %548 = icmp sgt i32 %chars_avail.0.lcssa.i, 127
  br i1 %548, label %.lr.ph60.i, label %2211

.lr.ph60.i:                                       ; preds = %.preheader49.i
  %549 = icmp eq i32 %count_only_option.0.ph, 0
  %550 = add i32 %chars_avail.0.lcssa.i, -128
  %551 = lshr i32 %550, 7
  %552 = shl nuw i32 %551, 7
  %553 = sub i32 %550, %552
  br i1 %549, label %.lr.ph60.split.us.i, label %.lr.ph60..lr.ph60.split_crit_edge.i

.lr.ph60.split.us.i:                              ; preds = %992, %.lr.ph60.i
  %indvars.iv175.i = phi i64 [ %indvars.iv.next176.i, %992 ], [ 0, %.lr.ph60.i ]
  %indvars.iv173.i = phi i64 [ %indvars.iv.next174.i, %992 ], [ 0, %.lr.ph60.i ]
  %remaining.059.us.i = phi i32 [ %1030, %992 ], [ %chars_avail.0.lcssa.i, %.lr.ph60.i ]
  %554 = phi <2 x i64> [ %914, %992 ], [ %.lcssa105.i, %.lr.ph60.i ]
  %555 = phi <2 x i64> [ %930, %992 ], [ %.lcssa104.i, %.lr.ph60.i ]
  %556 = phi <2 x i64> [ %937, %992 ], [ %.lcssa103.i, %.lr.ph60.i ]
  %557 = phi <2 x i64> [ %944, %992 ], [ %.lcssa102.i, %.lr.ph60.i ]
  %558 = phi <2 x i64> [ %960, %992 ], [ %.lcssa101.i, %.lr.ph60.i ]
  %559 = phi <2 x i64> [ %994, %992 ], [ %.lcssa100.i, %.lr.ph60.i ]
  %560 = getelementptr inbounds [1920 x i8]* %src_buffer.i, i64 0, i64 %indvars.iv175.i
  %561 = bitcast i8* %560 to <2 x i64>*
  %.sum20.us.i = or i64 %indvars.iv175.i, 112
  %562 = getelementptr inbounds [1920 x i8]* %src_buffer.i, i64 0, i64 %.sum20.us.i
  %563 = bitcast i8* %562 to <2 x i64>*
  %564 = load <2 x i64>* %563, align 16, !tbaa !1
  %.sum21.us.i = or i64 %indvars.iv175.i, 96
  %565 = getelementptr inbounds [1920 x i8]* %src_buffer.i, i64 0, i64 %.sum21.us.i
  %566 = bitcast i8* %565 to <2 x i64>*
  %567 = load <2 x i64>* %566, align 16, !tbaa !1
  %568 = bitcast <2 x i64> %564 to <8 x i16>
  %569 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %568, i32 8) #2
  %570 = bitcast <2 x i64> %567 to <8 x i16>
  %571 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %570, i32 8) #2
  %572 = call <16 x i8> @llvm_x86_sse2_packuswb_128(<8 x i16> %571, <8 x i16> %569) #2
  %573 = bitcast <16 x i8> %572 to <2 x i64>
  %574 = and <2 x i64> %564, <i64 71777214294589695, i64 71777214294589695>
  %575 = and <2 x i64> %567, <i64 71777214294589695, i64 71777214294589695>
  %576 = bitcast <2 x i64> %575 to <8 x i16>
  %577 = bitcast <2 x i64> %574 to <8 x i16>
  %578 = call <16 x i8> @llvm_x86_sse2_packuswb_128(<8 x i16> %576, <8 x i16> %577) #2
  %579 = bitcast <16 x i8> %578 to <2 x i64>
  %580 = bitcast <16 x i8> %578 to <8 x i16>
  %581 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %580, i32 1) #2
  %582 = bitcast <8 x i16> %581 to <2 x i64>
  %583 = and <2 x i64> %573, <i64 -6148914691236517206, i64 -6148914691236517206>
  %584 = and <2 x i64> %582, <i64 6148914691236517205, i64 6148914691236517205>
  %585 = or <2 x i64> %583, %584
  %586 = bitcast <16 x i8> %572 to <8 x i16>
  %587 = call <8 x i16> @llvm_x86_sse2_pslli_w(<8 x i16> %586, i32 1) #2
  %588 = bitcast <8 x i16> %587 to <2 x i64>
  %589 = and <2 x i64> %588, <i64 -6148914691236517206, i64 -6148914691236517206>
  %590 = and <2 x i64> %579, <i64 6148914691236517205, i64 6148914691236517205>
  %591 = or <2 x i64> %589, %590
  %.sum22.us.i = or i64 %indvars.iv175.i, 80
  %592 = getelementptr inbounds [1920 x i8]* %src_buffer.i, i64 0, i64 %.sum22.us.i
  %593 = bitcast i8* %592 to <2 x i64>*
  %594 = load <2 x i64>* %593, align 16, !tbaa !1
  %.sum23.us.i = or i64 %indvars.iv175.i, 64
  %595 = getelementptr inbounds [1920 x i8]* %src_buffer.i, i64 0, i64 %.sum23.us.i
  %596 = bitcast i8* %595 to <2 x i64>*
  %597 = load <2 x i64>* %596, align 16, !tbaa !1
  %598 = bitcast <2 x i64> %594 to <8 x i16>
  %599 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %598, i32 8) #2
  %600 = bitcast <2 x i64> %597 to <8 x i16>
  %601 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %600, i32 8) #2
  %602 = call <16 x i8> @llvm_x86_sse2_packuswb_128(<8 x i16> %601, <8 x i16> %599) #2
  %603 = bitcast <16 x i8> %602 to <2 x i64>
  %604 = and <2 x i64> %594, <i64 71777214294589695, i64 71777214294589695>
  %605 = and <2 x i64> %597, <i64 71777214294589695, i64 71777214294589695>
  %606 = bitcast <2 x i64> %605 to <8 x i16>
  %607 = bitcast <2 x i64> %604 to <8 x i16>
  %608 = call <16 x i8> @llvm_x86_sse2_packuswb_128(<8 x i16> %606, <8 x i16> %607) #2
  %609 = bitcast <16 x i8> %608 to <2 x i64>
  %610 = bitcast <16 x i8> %608 to <8 x i16>
  %611 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %610, i32 1) #2
  %612 = bitcast <8 x i16> %611 to <2 x i64>
  %613 = and <2 x i64> %603, <i64 -6148914691236517206, i64 -6148914691236517206>
  %614 = and <2 x i64> %612, <i64 6148914691236517205, i64 6148914691236517205>
  %615 = or <2 x i64> %613, %614
  %616 = bitcast <16 x i8> %602 to <8 x i16>
  %617 = call <8 x i16> @llvm_x86_sse2_pslli_w(<8 x i16> %616, i32 1) #2
  %618 = bitcast <8 x i16> %617 to <2 x i64>
  %619 = and <2 x i64> %618, <i64 -6148914691236517206, i64 -6148914691236517206>
  %620 = and <2 x i64> %609, <i64 6148914691236517205, i64 6148914691236517205>
  %621 = or <2 x i64> %619, %620
  %.sum24.us.i = or i64 %indvars.iv175.i, 48
  %622 = getelementptr inbounds [1920 x i8]* %src_buffer.i, i64 0, i64 %.sum24.us.i
  %623 = bitcast i8* %622 to <2 x i64>*
  %624 = load <2 x i64>* %623, align 16, !tbaa !1
  %.sum25.us.i = or i64 %indvars.iv175.i, 32
  %625 = getelementptr inbounds [1920 x i8]* %src_buffer.i, i64 0, i64 %.sum25.us.i
  %626 = bitcast i8* %625 to <2 x i64>*
  %627 = load <2 x i64>* %626, align 16, !tbaa !1
  %628 = bitcast <2 x i64> %624 to <8 x i16>
  %629 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %628, i32 8) #2
  %630 = bitcast <2 x i64> %627 to <8 x i16>
  %631 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %630, i32 8) #2
  %632 = call <16 x i8> @llvm_x86_sse2_packuswb_128(<8 x i16> %631, <8 x i16> %629) #2
  %633 = bitcast <16 x i8> %632 to <2 x i64>
  %634 = and <2 x i64> %624, <i64 71777214294589695, i64 71777214294589695>
  %635 = and <2 x i64> %627, <i64 71777214294589695, i64 71777214294589695>
  %636 = bitcast <2 x i64> %635 to <8 x i16>
  %637 = bitcast <2 x i64> %634 to <8 x i16>
  %638 = call <16 x i8> @llvm_x86_sse2_packuswb_128(<8 x i16> %636, <8 x i16> %637) #2
  %639 = bitcast <16 x i8> %638 to <2 x i64>
  %640 = bitcast <16 x i8> %638 to <8 x i16>
  %641 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %640, i32 1) #2
  %642 = bitcast <8 x i16> %641 to <2 x i64>
  %643 = and <2 x i64> %633, <i64 -6148914691236517206, i64 -6148914691236517206>
  %644 = and <2 x i64> %642, <i64 6148914691236517205, i64 6148914691236517205>
  %645 = or <2 x i64> %643, %644
  %646 = bitcast <16 x i8> %632 to <8 x i16>
  %647 = call <8 x i16> @llvm_x86_sse2_pslli_w(<8 x i16> %646, i32 1) #2
  %648 = bitcast <8 x i16> %647 to <2 x i64>
  %649 = and <2 x i64> %648, <i64 -6148914691236517206, i64 -6148914691236517206>
  %650 = and <2 x i64> %639, <i64 6148914691236517205, i64 6148914691236517205>
  %651 = or <2 x i64> %649, %650
  %.sum26.us.i = or i64 %indvars.iv175.i, 16
  %652 = getelementptr inbounds [1920 x i8]* %src_buffer.i, i64 0, i64 %.sum26.us.i
  %653 = bitcast i8* %652 to <2 x i64>*
  %654 = load <2 x i64>* %653, align 16, !tbaa !1
  %655 = load <2 x i64>* %561, align 16, !tbaa !1
  %656 = bitcast <2 x i64> %654 to <8 x i16>
  %657 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %656, i32 8) #2
  %658 = bitcast <2 x i64> %655 to <8 x i16>
  %659 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %658, i32 8) #2
  %660 = call <16 x i8> @llvm_x86_sse2_packuswb_128(<8 x i16> %659, <8 x i16> %657) #2
  %661 = bitcast <16 x i8> %660 to <2 x i64>
  %662 = and <2 x i64> %654, <i64 71777214294589695, i64 71777214294589695>
  %663 = and <2 x i64> %655, <i64 71777214294589695, i64 71777214294589695>
  %664 = bitcast <2 x i64> %663 to <8 x i16>
  %665 = bitcast <2 x i64> %662 to <8 x i16>
  %666 = call <16 x i8> @llvm_x86_sse2_packuswb_128(<8 x i16> %664, <8 x i16> %665) #2
  %667 = bitcast <16 x i8> %666 to <2 x i64>
  %668 = bitcast <16 x i8> %666 to <8 x i16>
  %669 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %668, i32 1) #2
  %670 = bitcast <8 x i16> %669 to <2 x i64>
  %671 = and <2 x i64> %661, <i64 -6148914691236517206, i64 -6148914691236517206>
  %672 = and <2 x i64> %670, <i64 6148914691236517205, i64 6148914691236517205>
  %673 = or <2 x i64> %671, %672
  %674 = bitcast <16 x i8> %660 to <8 x i16>
  %675 = call <8 x i16> @llvm_x86_sse2_pslli_w(<8 x i16> %674, i32 1) #2
  %676 = bitcast <8 x i16> %675 to <2 x i64>
  %677 = and <2 x i64> %676, <i64 -6148914691236517206, i64 -6148914691236517206>
  %678 = and <2 x i64> %667, <i64 6148914691236517205, i64 6148914691236517205>
  %679 = or <2 x i64> %677, %678
  %680 = bitcast <2 x i64> %585 to <8 x i16>
  %681 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %680, i32 8) #2
  %682 = bitcast <2 x i64> %615 to <8 x i16>
  %683 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %682, i32 8) #2
  %684 = call <16 x i8> @llvm_x86_sse2_packuswb_128(<8 x i16> %683, <8 x i16> %681) #2
  %685 = bitcast <16 x i8> %684 to <2 x i64>
  %686 = and <2 x i64> %585, <i64 71777214294589695, i64 71777214294589695>
  %687 = and <2 x i64> %615, <i64 71777214294589695, i64 71777214294589695>
  %688 = bitcast <2 x i64> %687 to <8 x i16>
  %689 = bitcast <2 x i64> %686 to <8 x i16>
  %690 = call <16 x i8> @llvm_x86_sse2_packuswb_128(<8 x i16> %688, <8 x i16> %689) #2
  %691 = bitcast <16 x i8> %690 to <2 x i64>
  %692 = bitcast <16 x i8> %690 to <8 x i16>
  %693 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %692, i32 2) #2
  %694 = bitcast <8 x i16> %693 to <2 x i64>
  %695 = and <2 x i64> %685, <i64 -3689348814741910324, i64 -3689348814741910324>
  %696 = and <2 x i64> %694, <i64 3689348814741910323, i64 3689348814741910323>
  %697 = or <2 x i64> %695, %696
  %698 = bitcast <16 x i8> %684 to <8 x i16>
  %699 = call <8 x i16> @llvm_x86_sse2_pslli_w(<8 x i16> %698, i32 2) #2
  %700 = bitcast <8 x i16> %699 to <2 x i64>
  %701 = and <2 x i64> %700, <i64 -3689348814741910324, i64 -3689348814741910324>
  %702 = and <2 x i64> %691, <i64 3689348814741910323, i64 3689348814741910323>
  %703 = or <2 x i64> %701, %702
  %704 = bitcast <2 x i64> %645 to <8 x i16>
  %705 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %704, i32 8) #2
  %706 = bitcast <2 x i64> %673 to <8 x i16>
  %707 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %706, i32 8) #2
  %708 = call <16 x i8> @llvm_x86_sse2_packuswb_128(<8 x i16> %707, <8 x i16> %705) #2
  %709 = bitcast <16 x i8> %708 to <2 x i64>
  %710 = and <2 x i64> %645, <i64 71777214294589695, i64 71777214294589695>
  %711 = and <2 x i64> %673, <i64 71777214294589695, i64 71777214294589695>
  %712 = bitcast <2 x i64> %711 to <8 x i16>
  %713 = bitcast <2 x i64> %710 to <8 x i16>
  %714 = call <16 x i8> @llvm_x86_sse2_packuswb_128(<8 x i16> %712, <8 x i16> %713) #2
  %715 = bitcast <16 x i8> %714 to <2 x i64>
  %716 = bitcast <16 x i8> %714 to <8 x i16>
  %717 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %716, i32 2) #2
  %718 = bitcast <8 x i16> %717 to <2 x i64>
  %719 = and <2 x i64> %709, <i64 -3689348814741910324, i64 -3689348814741910324>
  %720 = and <2 x i64> %718, <i64 3689348814741910323, i64 3689348814741910323>
  %721 = or <2 x i64> %719, %720
  %722 = bitcast <16 x i8> %708 to <8 x i16>
  %723 = call <8 x i16> @llvm_x86_sse2_pslli_w(<8 x i16> %722, i32 2) #2
  %724 = bitcast <8 x i16> %723 to <2 x i64>
  %725 = and <2 x i64> %724, <i64 -3689348814741910324, i64 -3689348814741910324>
  %726 = and <2 x i64> %715, <i64 3689348814741910323, i64 3689348814741910323>
  %727 = or <2 x i64> %725, %726
  %728 = bitcast <2 x i64> %591 to <8 x i16>
  %729 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %728, i32 8) #2
  %730 = bitcast <2 x i64> %621 to <8 x i16>
  %731 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %730, i32 8) #2
  %732 = call <16 x i8> @llvm_x86_sse2_packuswb_128(<8 x i16> %731, <8 x i16> %729) #2
  %733 = bitcast <16 x i8> %732 to <2 x i64>
  %734 = and <2 x i64> %591, <i64 71777214294589695, i64 71777214294589695>
  %735 = and <2 x i64> %621, <i64 71777214294589695, i64 71777214294589695>
  %736 = bitcast <2 x i64> %735 to <8 x i16>
  %737 = bitcast <2 x i64> %734 to <8 x i16>
  %738 = call <16 x i8> @llvm_x86_sse2_packuswb_128(<8 x i16> %736, <8 x i16> %737) #2
  %739 = bitcast <16 x i8> %738 to <2 x i64>
  %740 = bitcast <16 x i8> %738 to <8 x i16>
  %741 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %740, i32 2) #2
  %742 = bitcast <8 x i16> %741 to <2 x i64>
  %743 = and <2 x i64> %733, <i64 -3689348814741910324, i64 -3689348814741910324>
  %744 = and <2 x i64> %742, <i64 3689348814741910323, i64 3689348814741910323>
  %745 = or <2 x i64> %743, %744
  %746 = bitcast <16 x i8> %732 to <8 x i16>
  %747 = call <8 x i16> @llvm_x86_sse2_pslli_w(<8 x i16> %746, i32 2) #2
  %748 = bitcast <8 x i16> %747 to <2 x i64>
  %749 = and <2 x i64> %748, <i64 -3689348814741910324, i64 -3689348814741910324>
  %750 = and <2 x i64> %739, <i64 3689348814741910323, i64 3689348814741910323>
  %751 = or <2 x i64> %749, %750
  %752 = bitcast <2 x i64> %651 to <8 x i16>
  %753 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %752, i32 8) #2
  %754 = bitcast <2 x i64> %679 to <8 x i16>
  %755 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %754, i32 8) #2
  %756 = call <16 x i8> @llvm_x86_sse2_packuswb_128(<8 x i16> %755, <8 x i16> %753) #2
  %757 = bitcast <16 x i8> %756 to <2 x i64>
  %758 = and <2 x i64> %651, <i64 71777214294589695, i64 71777214294589695>
  %759 = and <2 x i64> %679, <i64 71777214294589695, i64 71777214294589695>
  %760 = bitcast <2 x i64> %759 to <8 x i16>
  %761 = bitcast <2 x i64> %758 to <8 x i16>
  %762 = call <16 x i8> @llvm_x86_sse2_packuswb_128(<8 x i16> %760, <8 x i16> %761) #2
  %763 = bitcast <16 x i8> %762 to <2 x i64>
  %764 = bitcast <16 x i8> %762 to <8 x i16>
  %765 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %764, i32 2) #2
  %766 = bitcast <8 x i16> %765 to <2 x i64>
  %767 = and <2 x i64> %757, <i64 -3689348814741910324, i64 -3689348814741910324>
  %768 = and <2 x i64> %766, <i64 3689348814741910323, i64 3689348814741910323>
  %769 = or <2 x i64> %767, %768
  %770 = bitcast <16 x i8> %756 to <8 x i16>
  %771 = call <8 x i16> @llvm_x86_sse2_pslli_w(<8 x i16> %770, i32 2) #2
  %772 = bitcast <8 x i16> %771 to <2 x i64>
  %773 = and <2 x i64> %772, <i64 -3689348814741910324, i64 -3689348814741910324>
  %774 = and <2 x i64> %763, <i64 3689348814741910323, i64 3689348814741910323>
  %775 = or <2 x i64> %773, %774
  %776 = bitcast <2 x i64> %697 to <8 x i16>
  %777 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %776, i32 8) #2
  %778 = bitcast <2 x i64> %721 to <8 x i16>
  %779 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %778, i32 8) #2
  %780 = call <16 x i8> @llvm_x86_sse2_packuswb_128(<8 x i16> %779, <8 x i16> %777) #2
  %781 = bitcast <16 x i8> %780 to <2 x i64>
  %782 = and <2 x i64> %697, <i64 71777214294589695, i64 71777214294589695>
  %783 = and <2 x i64> %721, <i64 71777214294589695, i64 71777214294589695>
  %784 = bitcast <2 x i64> %783 to <8 x i16>
  %785 = bitcast <2 x i64> %782 to <8 x i16>
  %786 = call <16 x i8> @llvm_x86_sse2_packuswb_128(<8 x i16> %784, <8 x i16> %785) #2
  %787 = bitcast <16 x i8> %786 to <2 x i64>
  %788 = bitcast <16 x i8> %786 to <8 x i16>
  %789 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %788, i32 4) #2
  %790 = bitcast <8 x i16> %789 to <2 x i64>
  %791 = and <2 x i64> %781, <i64 -1085102592571150096, i64 -1085102592571150096>
  %792 = and <2 x i64> %790, <i64 1085102592571150095, i64 1085102592571150095>
  %793 = or <2 x i64> %791, %792
  %794 = bitcast <16 x i8> %780 to <8 x i16>
  %795 = call <8 x i16> @llvm_x86_sse2_pslli_w(<8 x i16> %794, i32 4) #2
  %796 = bitcast <8 x i16> %795 to <2 x i64>
  %797 = and <2 x i64> %796, <i64 -1085102592571150096, i64 -1085102592571150096>
  %798 = and <2 x i64> %787, <i64 1085102592571150095, i64 1085102592571150095>
  %799 = or <2 x i64> %797, %798
  %800 = bitcast <2 x i64> %745 to <8 x i16>
  %801 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %800, i32 8) #2
  %802 = bitcast <2 x i64> %769 to <8 x i16>
  %803 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %802, i32 8) #2
  %804 = call <16 x i8> @llvm_x86_sse2_packuswb_128(<8 x i16> %803, <8 x i16> %801) #2
  %805 = bitcast <16 x i8> %804 to <2 x i64>
  %806 = and <2 x i64> %745, <i64 71777214294589695, i64 71777214294589695>
  %807 = and <2 x i64> %769, <i64 71777214294589695, i64 71777214294589695>
  %808 = bitcast <2 x i64> %807 to <8 x i16>
  %809 = bitcast <2 x i64> %806 to <8 x i16>
  %810 = call <16 x i8> @llvm_x86_sse2_packuswb_128(<8 x i16> %808, <8 x i16> %809) #2
  %811 = bitcast <16 x i8> %810 to <2 x i64>
  %812 = bitcast <16 x i8> %810 to <8 x i16>
  %813 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %812, i32 4) #2
  %814 = bitcast <8 x i16> %813 to <2 x i64>
  %815 = and <2 x i64> %805, <i64 -1085102592571150096, i64 -1085102592571150096>
  %816 = and <2 x i64> %814, <i64 1085102592571150095, i64 1085102592571150095>
  %817 = or <2 x i64> %815, %816
  %818 = bitcast <16 x i8> %804 to <8 x i16>
  %819 = call <8 x i16> @llvm_x86_sse2_pslli_w(<8 x i16> %818, i32 4) #2
  %820 = bitcast <8 x i16> %819 to <2 x i64>
  %821 = and <2 x i64> %820, <i64 -1085102592571150096, i64 -1085102592571150096>
  %822 = and <2 x i64> %811, <i64 1085102592571150095, i64 1085102592571150095>
  %823 = or <2 x i64> %821, %822
  %824 = bitcast <2 x i64> %703 to <8 x i16>
  %825 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %824, i32 8) #2
  %826 = bitcast <2 x i64> %727 to <8 x i16>
  %827 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %826, i32 8) #2
  %828 = call <16 x i8> @llvm_x86_sse2_packuswb_128(<8 x i16> %827, <8 x i16> %825) #2
  %829 = bitcast <16 x i8> %828 to <2 x i64>
  %830 = and <2 x i64> %703, <i64 71777214294589695, i64 71777214294589695>
  %831 = and <2 x i64> %727, <i64 71777214294589695, i64 71777214294589695>
  %832 = bitcast <2 x i64> %831 to <8 x i16>
  %833 = bitcast <2 x i64> %830 to <8 x i16>
  %834 = call <16 x i8> @llvm_x86_sse2_packuswb_128(<8 x i16> %832, <8 x i16> %833) #2
  %835 = bitcast <16 x i8> %834 to <2 x i64>
  %836 = bitcast <16 x i8> %834 to <8 x i16>
  %837 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %836, i32 4) #2
  %838 = bitcast <8 x i16> %837 to <2 x i64>
  %839 = and <2 x i64> %829, <i64 -1085102592571150096, i64 -1085102592571150096>
  %840 = and <2 x i64> %838, <i64 1085102592571150095, i64 1085102592571150095>
  %841 = or <2 x i64> %839, %840
  %842 = bitcast <16 x i8> %828 to <8 x i16>
  %843 = call <8 x i16> @llvm_x86_sse2_pslli_w(<8 x i16> %842, i32 4) #2
  %844 = bitcast <8 x i16> %843 to <2 x i64>
  %845 = and <2 x i64> %844, <i64 -1085102592571150096, i64 -1085102592571150096>
  %846 = and <2 x i64> %835, <i64 1085102592571150095, i64 1085102592571150095>
  %847 = or <2 x i64> %845, %846
  %848 = bitcast <2 x i64> %751 to <8 x i16>
  %849 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %848, i32 8) #2
  %850 = bitcast <2 x i64> %775 to <8 x i16>
  %851 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %850, i32 8) #2
  %852 = call <16 x i8> @llvm_x86_sse2_packuswb_128(<8 x i16> %851, <8 x i16> %849) #2
  %853 = bitcast <16 x i8> %852 to <2 x i64>
  %854 = and <2 x i64> %751, <i64 71777214294589695, i64 71777214294589695>
  %855 = and <2 x i64> %775, <i64 71777214294589695, i64 71777214294589695>
  %856 = bitcast <2 x i64> %855 to <8 x i16>
  %857 = bitcast <2 x i64> %854 to <8 x i16>
  %858 = call <16 x i8> @llvm_x86_sse2_packuswb_128(<8 x i16> %856, <8 x i16> %857) #2
  %859 = bitcast <16 x i8> %858 to <2 x i64>
  %860 = bitcast <16 x i8> %858 to <8 x i16>
  %861 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %860, i32 4) #2
  %862 = bitcast <8 x i16> %861 to <2 x i64>
  %863 = and <2 x i64> %853, <i64 -1085102592571150096, i64 -1085102592571150096>
  %864 = and <2 x i64> %862, <i64 1085102592571150095, i64 1085102592571150095>
  %865 = or <2 x i64> %863, %864
  %866 = bitcast <16 x i8> %852 to <8 x i16>
  %867 = call <8 x i16> @llvm_x86_sse2_pslli_w(<8 x i16> %866, i32 4) #2
  %868 = bitcast <8 x i16> %867 to <2 x i64>
  %869 = and <2 x i64> %868, <i64 -1085102592571150096, i64 -1085102592571150096>
  %870 = and <2 x i64> %859, <i64 1085102592571150095, i64 1085102592571150095>
  %871 = or <2 x i64> %869, %870
  %872 = or <2 x i64> %793, %817
  %873 = or <2 x i64> %841, %865
  %874 = or <2 x i64> %872, %873
  %875 = or <2 x i64> %823, %847
  %876 = and <2 x i64> %799, %875
  %877 = or <2 x i64> %874, %876
  %878 = or <2 x i64> %872, %841
  %879 = and <2 x i64> %847, %871
  %880 = or <2 x i64> %823, %879
  %881 = and <2 x i64> %799, %880
  %882 = or <2 x i64> %865, %881
  %.not.i3.us.i = xor <2 x i64> %882, <i64 -1, i64 -1>
  %883 = or <2 x i64> %878, %.not.i3.us.i
  %884 = and <2 x i64> %883, %877
  %885 = xor <2 x i64> %872, <i64 -1, i64 -1>
  %886 = and <2 x i64> %841, %885
  %887 = or <2 x i64> %799, %823
  %888 = or <2 x i64> %847, %871
  %889 = or <2 x i64> %887, %888
  %890 = or <2 x i64> %865, %889
  %891 = and <2 x i64> %886, %890
  %892 = or <2 x i64> %873, %889
  %893 = and <2 x i64> %817, %892
  %894 = or <2 x i64> %793, %893
  %.not2.i4.us.i = xor <2 x i64> %884, <i64 -1, i64 -1>
  %.not1.i5.us.i = or <2 x i64> %891, %.not2.i4.us.i
  %895 = or <2 x i64> %894, %.not1.i5.us.i
  %896 = xor <2 x i64> %793, <i64 -1, i64 -1>
  %897 = and <2 x i64> %817, %896
  %898 = xor <2 x i64> %873, <i64 -1, i64 -1>
  %899 = and <2 x i64> %897, %898
  %900 = xor <2 x i64> %889, <i64 -1, i64 -1>
  %901 = and <2 x i64> %899, %900
  %902 = xor <2 x i64> %823, <i64 -1, i64 -1>
  %903 = and <2 x i64> %799, %902
  %904 = xor <2 x i64> %871, <i64 -1, i64 -1>
  %905 = and <2 x i64> %847, %904
  %906 = and <2 x i64> %903, %905
  %907 = xor <2 x i64> %874, <i64 -1, i64 -1>
  %908 = and <2 x i64> %906, %907
  %909 = call <2 x i64> @llvm_x86_sse2_psrli_q(<2 x i64> %895, i32 63) #2
  %910 = shufflevector <2 x i64> %554, <2 x i64> %909, <2 x i32> <i32 0, i32 2>
  %911 = shl <2 x i64> %895, <i64 1, i64 1>
  %912 = or <2 x i64> %911, %910
  %913 = call <2 x i64> @llvm_x86_sse2_psrl_dq(<2 x i64> %895, i32 64) #2
  %914 = call <2 x i64> @llvm_x86_sse2_psrli_q(<2 x i64> %913, i32 63) #2
  %915 = and <2 x i64> %895, %912
  %916 = add <2 x i64> %915, %895
  %917 = add <2 x i64> %916, %555
  %918 = xor <2 x i64> %917, <i64 -1, i64 -1>
  %919 = and <2 x i64> %895, %918
  %920 = or <2 x i64> %915, %919
  %921 = call <2 x i64> @llvm_x86_sse2_psrli_q(<2 x i64> %920, i32 63) #2
  %922 = call <2 x i64> @llvm_x86_sse2_psll_dq(<2 x i64> %921, i32 64) #2
  %923 = add <2 x i64> %922, %917
  %924 = xor <2 x i64> %923, <i64 -1, i64 -1>
  %925 = and <2 x i64> %895, %924
  %926 = or <2 x i64> %915, %925
  %927 = xor <2 x i64> %923, %895
  %928 = or <2 x i64> %927, %912
  %929 = call <2 x i64> @llvm_x86_sse2_psrl_dq(<2 x i64> %926, i32 64) #2
  %930 = call <2 x i64> @llvm_x86_sse2_psrli_q(<2 x i64> %929, i32 63) #2
  %931 = and <2 x i64> %928, %901
  %932 = call <2 x i64> @llvm_x86_sse2_psrli_q(<2 x i64> %931, i32 63) #2
  %933 = shufflevector <2 x i64> %556, <2 x i64> %932, <2 x i32> <i32 0, i32 2>
  %934 = shl <2 x i64> %931, <i64 1, i64 1>
  %935 = or <2 x i64> %934, %933
  %936 = call <2 x i64> @llvm_x86_sse2_psrl_dq(<2 x i64> %931, i32 64) #2
  %937 = call <2 x i64> @llvm_x86_sse2_psrli_q(<2 x i64> %936, i32 63) #2
  %938 = and <2 x i64> %935, %895
  %939 = call <2 x i64> @llvm_x86_sse2_psrli_q(<2 x i64> %938, i32 63) #2
  %940 = shufflevector <2 x i64> %557, <2 x i64> %939, <2 x i32> <i32 0, i32 2>
  %941 = shl <2 x i64> %938, <i64 1, i64 1>
  %942 = or <2 x i64> %941, %940
  %943 = call <2 x i64> @llvm_x86_sse2_psrl_dq(<2 x i64> %938, i32 64) #2
  %944 = call <2 x i64> @llvm_x86_sse2_psrli_q(<2 x i64> %943, i32 63) #2
  %945 = and <2 x i64> %895, %942
  %946 = add <2 x i64> %945, %895
  %947 = add <2 x i64> %946, %558
  %948 = xor <2 x i64> %947, <i64 -1, i64 -1>
  %949 = and <2 x i64> %895, %948
  %950 = or <2 x i64> %945, %949
  %951 = call <2 x i64> @llvm_x86_sse2_psrli_q(<2 x i64> %950, i32 63) #2
  %952 = call <2 x i64> @llvm_x86_sse2_psll_dq(<2 x i64> %951, i32 64) #2
  %953 = add <2 x i64> %952, %947
  %954 = xor <2 x i64> %953, <i64 -1, i64 -1>
  %955 = and <2 x i64> %895, %954
  %956 = or <2 x i64> %945, %955
  %957 = xor <2 x i64> %953, %895
  %958 = or <2 x i64> %957, %942
  %959 = call <2 x i64> @llvm_x86_sse2_psrl_dq(<2 x i64> %956, i32 64) #2
  %960 = call <2 x i64> @llvm_x86_sse2_psrli_q(<2 x i64> %959, i32 63) #2
  %961 = bitcast <2 x i64> %958 to <16 x i8>
  %962 = icmp eq <16 x i8> %961, zeroinitializer
  %963 = sext <16 x i1> %962 to <16 x i8>
  %964 = call i32 @llvm_x86_sse2_pmovmskb_128(<16 x i8> %963) #2
  %965 = trunc i32 %964 to i16
  %966 = icmp eq i16 %965, -1
  br i1 %966, label %967, label %._crit_edge.i2.us.i

; <label>:967                                     ; preds = %.lr.ph60.split.us.i
  %968 = bitcast <2 x i64> %559 to <16 x i8>
  %969 = icmp eq <16 x i8> %968, zeroinitializer
  %970 = sext <16 x i1> %969 to <16 x i8>
  %971 = call i32 @llvm_x86_sse2_pmovmskb_128(<16 x i8> %970) #2
  %972 = trunc i32 %971 to i16
  %973 = icmp eq i16 %972, -1
  br i1 %973, label %992, label %._crit_edge.i2.us.i

._crit_edge.i2.us.i:                              ; preds = %967, %.lr.ph60.split.us.i
  %.not27.us.i = xor <2 x i64> %906, <i64 -1, i64 -1>
  %974 = or <2 x i64> %874, %.not27.us.i
  %975 = and <2 x i64> %958, %974
  %976 = add <2 x i64> %975, %974
  %977 = add <2 x i64> %976, %559
  %978 = xor <2 x i64> %977, <i64 -1, i64 -1>
  %979 = and <2 x i64> %974, %978
  %980 = or <2 x i64> %975, %979
  %981 = call <2 x i64> @llvm_x86_sse2_psrli_q(<2 x i64> %980, i32 63) #2
  %982 = call <2 x i64> @llvm_x86_sse2_psll_dq(<2 x i64> %981, i32 64) #2
  %983 = add <2 x i64> %982, %977
  %984 = xor <2 x i64> %983, <i64 -1, i64 -1>
  %985 = and <2 x i64> %974, %984
  %986 = or <2 x i64> %975, %985
  %987 = xor <2 x i64> %983, %974
  %988 = or <2 x i64> %987, %958
  %989 = call <2 x i64> @llvm_x86_sse2_psrl_dq(<2 x i64> %986, i32 64) #2
  %990 = call <2 x i64> @llvm_x86_sse2_psrli_q(<2 x i64> %989, i32 63) #2
  %991 = and <2 x i64> %988, %908
  br label %992

; <label>:992                                     ; preds = %._crit_edge.i2.us.i, %967
  %993 = phi <2 x i64> [ zeroinitializer, %967 ], [ %991, %._crit_edge.i2.us.i ]
  %994 = phi <2 x i64> [ %559, %967 ], [ %990, %._crit_edge.i2.us.i ]
  %995 = getelementptr inbounds %class.BitStreamScanner* %LF_scanner.i, i64 0, i32 0, i32 0, i64 %indvars.iv173.i
  store <2 x i64> %908, <2 x i64>* %995, align 16, !tbaa !1
  %996 = bitcast <2 x i64> %908 to <4 x i32>
  %997 = icmp eq <4 x i32> %996, zeroinitializer
  %998 = sext <4 x i1> %997 to <4 x i32>
  %999 = bitcast <4 x i32> %998 to <2 x i64>
  %1000 = call <2 x i64> @llvm_x86_sse2_psrli_q(<2 x i64> %999, i32 32) #2
  %1001 = and <2 x i64> %999, %1000
  %1002 = call <2 x i64> @llvm_x86_sse2_pslli_q(<2 x i64> %1001, i32 32) #2
  %1003 = or <2 x i64> %1001, %1002
  %1004 = xor <2 x i64> %1003, <i64 -1, i64 -1>
  %1005 = bitcast <2 x i64> %1004 to <2 x double>
  %1006 = call i32 @llvm_x86_sse2_movmsk_pd(<2 x double> %1005) #2
  %1007 = zext i32 %1006 to i64
  %1008 = and i64 %1007, 255
  %1009 = shl nsw i64 %indvars.iv173.i, 1
  %1010 = shl i64 %1008, %1009
  %1011 = load i64* %60, align 16, !tbaa !4
  %1012 = add i64 %1010, %1011
  store i64 %1012, i64* %60, align 16, !tbaa !4
  %1013 = getelementptr inbounds %class.BitStreamScanner* %match_scanner.i, i64 0, i32 0, i32 0, i64 %indvars.iv173.i
  store <2 x i64> %993, <2 x i64>* %1013, align 16, !tbaa !1
  %1014 = bitcast <2 x i64> %993 to <4 x i32>
  %1015 = icmp eq <4 x i32> %1014, zeroinitializer
  %1016 = sext <4 x i1> %1015 to <4 x i32>
  %1017 = bitcast <4 x i32> %1016 to <2 x i64>
  %1018 = call <2 x i64> @llvm_x86_sse2_psrli_q(<2 x i64> %1017, i32 32) #2
  %1019 = and <2 x i64> %1017, %1018
  %1020 = call <2 x i64> @llvm_x86_sse2_pslli_q(<2 x i64> %1019, i32 32) #2
  %1021 = or <2 x i64> %1019, %1020
  %1022 = xor <2 x i64> %1021, <i64 -1, i64 -1>
  %1023 = bitcast <2 x i64> %1022 to <2 x double>
  %1024 = call i32 @llvm_x86_sse2_movmsk_pd(<2 x double> %1023) #2
  %1025 = zext i32 %1024 to i64
  %1026 = and i64 %1025, 255
  %1027 = shl i64 %1026, %1009
  %1028 = load i64* %61, align 16, !tbaa !4
  %1029 = add i64 %1027, %1028
  store i64 %1029, i64* %61, align 16, !tbaa !4
  %indvars.iv.next176.i = add i64 %indvars.iv175.i, 128
  %1030 = add nsw i32 %remaining.059.us.i, -128
  %indvars.iv.next174.i = add i64 %indvars.iv173.i, 1
  %1031 = icmp sgt i32 %1030, 127
  br i1 %1031, label %.lr.ph60.split.us.i, label %._crit_edge61.i

.preheader73..preheader73.split_crit_edge.i:      ; preds = %1559, %.preheader73.i
  %indvars.iv147.i = phi i64 [ %indvars.iv.next148.i, %1559 ], [ 0, %.preheader73.i ]
  %match_vector.182.i = phi <2 x i64> [ %match_vector.2.i, %1559 ], [ %match_vector.0110.i, %.preheader73.i ]
  %match_count.181.i = phi i32 [ %match_count.2.i, %1559 ], [ %match_count.0109.i, %.preheader73.i ]
  %1032 = phi <2 x i64> [ %1393, %1559 ], [ %65, %.preheader73.i ]
  %1033 = phi <2 x i64> [ %1409, %1559 ], [ %66, %.preheader73.i ]
  %1034 = phi <2 x i64> [ %1416, %1559 ], [ %67, %.preheader73.i ]
  %1035 = phi <2 x i64> [ %1423, %1559 ], [ %68, %.preheader73.i ]
  %1036 = phi <2 x i64> [ %1439, %1559 ], [ %69, %.preheader73.i ]
  %1037 = phi <2 x i64> [ %1473, %1559 ], [ %70, %.preheader73.i ]
  %1038 = shl nsw i64 %indvars.iv147.i, 7
  %1039 = getelementptr inbounds [1920 x i8]* %src_buffer.i, i64 0, i64 %1038
  %1040 = bitcast i8* %1039 to <2 x i64>*
  %.sum28.i = or i64 %1038, 112
  %1041 = getelementptr inbounds [1920 x i8]* %src_buffer.i, i64 0, i64 %.sum28.i
  %1042 = bitcast i8* %1041 to <2 x i64>*
  %1043 = load <2 x i64>* %1042, align 16, !tbaa !1
  %.sum29.i = or i64 %1038, 96
  %1044 = getelementptr inbounds [1920 x i8]* %src_buffer.i, i64 0, i64 %.sum29.i
  %1045 = bitcast i8* %1044 to <2 x i64>*
  %1046 = load <2 x i64>* %1045, align 16, !tbaa !1
  %1047 = bitcast <2 x i64> %1043 to <8 x i16>
  %1048 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %1047, i32 8) #2
  %1049 = bitcast <2 x i64> %1046 to <8 x i16>
  %1050 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %1049, i32 8) #2
  %1051 = call <16 x i8> @llvm_x86_sse2_packuswb_128(<8 x i16> %1050, <8 x i16> %1048) #2
  %1052 = bitcast <16 x i8> %1051 to <2 x i64>
  %1053 = and <2 x i64> %1043, <i64 71777214294589695, i64 71777214294589695>
  %1054 = and <2 x i64> %1046, <i64 71777214294589695, i64 71777214294589695>
  %1055 = bitcast <2 x i64> %1054 to <8 x i16>
  %1056 = bitcast <2 x i64> %1053 to <8 x i16>
  %1057 = call <16 x i8> @llvm_x86_sse2_packuswb_128(<8 x i16> %1055, <8 x i16> %1056) #2
  %1058 = bitcast <16 x i8> %1057 to <2 x i64>
  %1059 = bitcast <16 x i8> %1057 to <8 x i16>
  %1060 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %1059, i32 1) #2
  %1061 = bitcast <8 x i16> %1060 to <2 x i64>
  %1062 = and <2 x i64> %1052, <i64 -6148914691236517206, i64 -6148914691236517206>
  %1063 = and <2 x i64> %1061, <i64 6148914691236517205, i64 6148914691236517205>
  %1064 = or <2 x i64> %1062, %1063
  %1065 = bitcast <16 x i8> %1051 to <8 x i16>
  %1066 = call <8 x i16> @llvm_x86_sse2_pslli_w(<8 x i16> %1065, i32 1) #2
  %1067 = bitcast <8 x i16> %1066 to <2 x i64>
  %1068 = and <2 x i64> %1067, <i64 -6148914691236517206, i64 -6148914691236517206>
  %1069 = and <2 x i64> %1058, <i64 6148914691236517205, i64 6148914691236517205>
  %1070 = or <2 x i64> %1068, %1069
  %.sum30.i = or i64 %1038, 80
  %1071 = getelementptr inbounds [1920 x i8]* %src_buffer.i, i64 0, i64 %.sum30.i
  %1072 = bitcast i8* %1071 to <2 x i64>*
  %1073 = load <2 x i64>* %1072, align 16, !tbaa !1
  %.sum31.i = or i64 %1038, 64
  %1074 = getelementptr inbounds [1920 x i8]* %src_buffer.i, i64 0, i64 %.sum31.i
  %1075 = bitcast i8* %1074 to <2 x i64>*
  %1076 = load <2 x i64>* %1075, align 16, !tbaa !1
  %1077 = bitcast <2 x i64> %1073 to <8 x i16>
  %1078 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %1077, i32 8) #2
  %1079 = bitcast <2 x i64> %1076 to <8 x i16>
  %1080 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %1079, i32 8) #2
  %1081 = call <16 x i8> @llvm_x86_sse2_packuswb_128(<8 x i16> %1080, <8 x i16> %1078) #2
  %1082 = bitcast <16 x i8> %1081 to <2 x i64>
  %1083 = and <2 x i64> %1073, <i64 71777214294589695, i64 71777214294589695>
  %1084 = and <2 x i64> %1076, <i64 71777214294589695, i64 71777214294589695>
  %1085 = bitcast <2 x i64> %1084 to <8 x i16>
  %1086 = bitcast <2 x i64> %1083 to <8 x i16>
  %1087 = call <16 x i8> @llvm_x86_sse2_packuswb_128(<8 x i16> %1085, <8 x i16> %1086) #2
  %1088 = bitcast <16 x i8> %1087 to <2 x i64>
  %1089 = bitcast <16 x i8> %1087 to <8 x i16>
  %1090 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %1089, i32 1) #2
  %1091 = bitcast <8 x i16> %1090 to <2 x i64>
  %1092 = and <2 x i64> %1082, <i64 -6148914691236517206, i64 -6148914691236517206>
  %1093 = and <2 x i64> %1091, <i64 6148914691236517205, i64 6148914691236517205>
  %1094 = or <2 x i64> %1092, %1093
  %1095 = bitcast <16 x i8> %1081 to <8 x i16>
  %1096 = call <8 x i16> @llvm_x86_sse2_pslli_w(<8 x i16> %1095, i32 1) #2
  %1097 = bitcast <8 x i16> %1096 to <2 x i64>
  %1098 = and <2 x i64> %1097, <i64 -6148914691236517206, i64 -6148914691236517206>
  %1099 = and <2 x i64> %1088, <i64 6148914691236517205, i64 6148914691236517205>
  %1100 = or <2 x i64> %1098, %1099
  %.sum32.i = or i64 %1038, 48
  %1101 = getelementptr inbounds [1920 x i8]* %src_buffer.i, i64 0, i64 %.sum32.i
  %1102 = bitcast i8* %1101 to <2 x i64>*
  %1103 = load <2 x i64>* %1102, align 16, !tbaa !1
  %.sum33.i = or i64 %1038, 32
  %1104 = getelementptr inbounds [1920 x i8]* %src_buffer.i, i64 0, i64 %.sum33.i
  %1105 = bitcast i8* %1104 to <2 x i64>*
  %1106 = load <2 x i64>* %1105, align 16, !tbaa !1
  %1107 = bitcast <2 x i64> %1103 to <8 x i16>
  %1108 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %1107, i32 8) #2
  %1109 = bitcast <2 x i64> %1106 to <8 x i16>
  %1110 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %1109, i32 8) #2
  %1111 = call <16 x i8> @llvm_x86_sse2_packuswb_128(<8 x i16> %1110, <8 x i16> %1108) #2
  %1112 = bitcast <16 x i8> %1111 to <2 x i64>
  %1113 = and <2 x i64> %1103, <i64 71777214294589695, i64 71777214294589695>
  %1114 = and <2 x i64> %1106, <i64 71777214294589695, i64 71777214294589695>
  %1115 = bitcast <2 x i64> %1114 to <8 x i16>
  %1116 = bitcast <2 x i64> %1113 to <8 x i16>
  %1117 = call <16 x i8> @llvm_x86_sse2_packuswb_128(<8 x i16> %1115, <8 x i16> %1116) #2
  %1118 = bitcast <16 x i8> %1117 to <2 x i64>
  %1119 = bitcast <16 x i8> %1117 to <8 x i16>
  %1120 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %1119, i32 1) #2
  %1121 = bitcast <8 x i16> %1120 to <2 x i64>
  %1122 = and <2 x i64> %1112, <i64 -6148914691236517206, i64 -6148914691236517206>
  %1123 = and <2 x i64> %1121, <i64 6148914691236517205, i64 6148914691236517205>
  %1124 = or <2 x i64> %1122, %1123
  %1125 = bitcast <16 x i8> %1111 to <8 x i16>
  %1126 = call <8 x i16> @llvm_x86_sse2_pslli_w(<8 x i16> %1125, i32 1) #2
  %1127 = bitcast <8 x i16> %1126 to <2 x i64>
  %1128 = and <2 x i64> %1127, <i64 -6148914691236517206, i64 -6148914691236517206>
  %1129 = and <2 x i64> %1118, <i64 6148914691236517205, i64 6148914691236517205>
  %1130 = or <2 x i64> %1128, %1129
  %.sum34.i = or i64 %1038, 16
  %1131 = getelementptr inbounds [1920 x i8]* %src_buffer.i, i64 0, i64 %.sum34.i
  %1132 = bitcast i8* %1131 to <2 x i64>*
  %1133 = load <2 x i64>* %1132, align 16, !tbaa !1
  %1134 = load <2 x i64>* %1040, align 16, !tbaa !1
  %1135 = bitcast <2 x i64> %1133 to <8 x i16>
  %1136 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %1135, i32 8) #2
  %1137 = bitcast <2 x i64> %1134 to <8 x i16>
  %1138 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %1137, i32 8) #2
  %1139 = call <16 x i8> @llvm_x86_sse2_packuswb_128(<8 x i16> %1138, <8 x i16> %1136) #2
  %1140 = bitcast <16 x i8> %1139 to <2 x i64>
  %1141 = and <2 x i64> %1133, <i64 71777214294589695, i64 71777214294589695>
  %1142 = and <2 x i64> %1134, <i64 71777214294589695, i64 71777214294589695>
  %1143 = bitcast <2 x i64> %1142 to <8 x i16>
  %1144 = bitcast <2 x i64> %1141 to <8 x i16>
  %1145 = call <16 x i8> @llvm_x86_sse2_packuswb_128(<8 x i16> %1143, <8 x i16> %1144) #2
  %1146 = bitcast <16 x i8> %1145 to <2 x i64>
  %1147 = bitcast <16 x i8> %1145 to <8 x i16>
  %1148 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %1147, i32 1) #2
  %1149 = bitcast <8 x i16> %1148 to <2 x i64>
  %1150 = and <2 x i64> %1140, <i64 -6148914691236517206, i64 -6148914691236517206>
  %1151 = and <2 x i64> %1149, <i64 6148914691236517205, i64 6148914691236517205>
  %1152 = or <2 x i64> %1150, %1151
  %1153 = bitcast <16 x i8> %1139 to <8 x i16>
  %1154 = call <8 x i16> @llvm_x86_sse2_pslli_w(<8 x i16> %1153, i32 1) #2
  %1155 = bitcast <8 x i16> %1154 to <2 x i64>
  %1156 = and <2 x i64> %1155, <i64 -6148914691236517206, i64 -6148914691236517206>
  %1157 = and <2 x i64> %1146, <i64 6148914691236517205, i64 6148914691236517205>
  %1158 = or <2 x i64> %1156, %1157
  %1159 = bitcast <2 x i64> %1064 to <8 x i16>
  %1160 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %1159, i32 8) #2
  %1161 = bitcast <2 x i64> %1094 to <8 x i16>
  %1162 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %1161, i32 8) #2
  %1163 = call <16 x i8> @llvm_x86_sse2_packuswb_128(<8 x i16> %1162, <8 x i16> %1160) #2
  %1164 = bitcast <16 x i8> %1163 to <2 x i64>
  %1165 = and <2 x i64> %1064, <i64 71777214294589695, i64 71777214294589695>
  %1166 = and <2 x i64> %1094, <i64 71777214294589695, i64 71777214294589695>
  %1167 = bitcast <2 x i64> %1166 to <8 x i16>
  %1168 = bitcast <2 x i64> %1165 to <8 x i16>
  %1169 = call <16 x i8> @llvm_x86_sse2_packuswb_128(<8 x i16> %1167, <8 x i16> %1168) #2
  %1170 = bitcast <16 x i8> %1169 to <2 x i64>
  %1171 = bitcast <16 x i8> %1169 to <8 x i16>
  %1172 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %1171, i32 2) #2
  %1173 = bitcast <8 x i16> %1172 to <2 x i64>
  %1174 = and <2 x i64> %1164, <i64 -3689348814741910324, i64 -3689348814741910324>
  %1175 = and <2 x i64> %1173, <i64 3689348814741910323, i64 3689348814741910323>
  %1176 = or <2 x i64> %1174, %1175
  %1177 = bitcast <16 x i8> %1163 to <8 x i16>
  %1178 = call <8 x i16> @llvm_x86_sse2_pslli_w(<8 x i16> %1177, i32 2) #2
  %1179 = bitcast <8 x i16> %1178 to <2 x i64>
  %1180 = and <2 x i64> %1179, <i64 -3689348814741910324, i64 -3689348814741910324>
  %1181 = and <2 x i64> %1170, <i64 3689348814741910323, i64 3689348814741910323>
  %1182 = or <2 x i64> %1180, %1181
  %1183 = bitcast <2 x i64> %1124 to <8 x i16>
  %1184 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %1183, i32 8) #2
  %1185 = bitcast <2 x i64> %1152 to <8 x i16>
  %1186 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %1185, i32 8) #2
  %1187 = call <16 x i8> @llvm_x86_sse2_packuswb_128(<8 x i16> %1186, <8 x i16> %1184) #2
  %1188 = bitcast <16 x i8> %1187 to <2 x i64>
  %1189 = and <2 x i64> %1124, <i64 71777214294589695, i64 71777214294589695>
  %1190 = and <2 x i64> %1152, <i64 71777214294589695, i64 71777214294589695>
  %1191 = bitcast <2 x i64> %1190 to <8 x i16>
  %1192 = bitcast <2 x i64> %1189 to <8 x i16>
  %1193 = call <16 x i8> @llvm_x86_sse2_packuswb_128(<8 x i16> %1191, <8 x i16> %1192) #2
  %1194 = bitcast <16 x i8> %1193 to <2 x i64>
  %1195 = bitcast <16 x i8> %1193 to <8 x i16>
  %1196 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %1195, i32 2) #2
  %1197 = bitcast <8 x i16> %1196 to <2 x i64>
  %1198 = and <2 x i64> %1188, <i64 -3689348814741910324, i64 -3689348814741910324>
  %1199 = and <2 x i64> %1197, <i64 3689348814741910323, i64 3689348814741910323>
  %1200 = or <2 x i64> %1198, %1199
  %1201 = bitcast <16 x i8> %1187 to <8 x i16>
  %1202 = call <8 x i16> @llvm_x86_sse2_pslli_w(<8 x i16> %1201, i32 2) #2
  %1203 = bitcast <8 x i16> %1202 to <2 x i64>
  %1204 = and <2 x i64> %1203, <i64 -3689348814741910324, i64 -3689348814741910324>
  %1205 = and <2 x i64> %1194, <i64 3689348814741910323, i64 3689348814741910323>
  %1206 = or <2 x i64> %1204, %1205
  %1207 = bitcast <2 x i64> %1070 to <8 x i16>
  %1208 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %1207, i32 8) #2
  %1209 = bitcast <2 x i64> %1100 to <8 x i16>
  %1210 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %1209, i32 8) #2
  %1211 = call <16 x i8> @llvm_x86_sse2_packuswb_128(<8 x i16> %1210, <8 x i16> %1208) #2
  %1212 = bitcast <16 x i8> %1211 to <2 x i64>
  %1213 = and <2 x i64> %1070, <i64 71777214294589695, i64 71777214294589695>
  %1214 = and <2 x i64> %1100, <i64 71777214294589695, i64 71777214294589695>
  %1215 = bitcast <2 x i64> %1214 to <8 x i16>
  %1216 = bitcast <2 x i64> %1213 to <8 x i16>
  %1217 = call <16 x i8> @llvm_x86_sse2_packuswb_128(<8 x i16> %1215, <8 x i16> %1216) #2
  %1218 = bitcast <16 x i8> %1217 to <2 x i64>
  %1219 = bitcast <16 x i8> %1217 to <8 x i16>
  %1220 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %1219, i32 2) #2
  %1221 = bitcast <8 x i16> %1220 to <2 x i64>
  %1222 = and <2 x i64> %1212, <i64 -3689348814741910324, i64 -3689348814741910324>
  %1223 = and <2 x i64> %1221, <i64 3689348814741910323, i64 3689348814741910323>
  %1224 = or <2 x i64> %1222, %1223
  %1225 = bitcast <16 x i8> %1211 to <8 x i16>
  %1226 = call <8 x i16> @llvm_x86_sse2_pslli_w(<8 x i16> %1225, i32 2) #2
  %1227 = bitcast <8 x i16> %1226 to <2 x i64>
  %1228 = and <2 x i64> %1227, <i64 -3689348814741910324, i64 -3689348814741910324>
  %1229 = and <2 x i64> %1218, <i64 3689348814741910323, i64 3689348814741910323>
  %1230 = or <2 x i64> %1228, %1229
  %1231 = bitcast <2 x i64> %1130 to <8 x i16>
  %1232 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %1231, i32 8) #2
  %1233 = bitcast <2 x i64> %1158 to <8 x i16>
  %1234 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %1233, i32 8) #2
  %1235 = call <16 x i8> @llvm_x86_sse2_packuswb_128(<8 x i16> %1234, <8 x i16> %1232) #2
  %1236 = bitcast <16 x i8> %1235 to <2 x i64>
  %1237 = and <2 x i64> %1130, <i64 71777214294589695, i64 71777214294589695>
  %1238 = and <2 x i64> %1158, <i64 71777214294589695, i64 71777214294589695>
  %1239 = bitcast <2 x i64> %1238 to <8 x i16>
  %1240 = bitcast <2 x i64> %1237 to <8 x i16>
  %1241 = call <16 x i8> @llvm_x86_sse2_packuswb_128(<8 x i16> %1239, <8 x i16> %1240) #2
  %1242 = bitcast <16 x i8> %1241 to <2 x i64>
  %1243 = bitcast <16 x i8> %1241 to <8 x i16>
  %1244 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %1243, i32 2) #2
  %1245 = bitcast <8 x i16> %1244 to <2 x i64>
  %1246 = and <2 x i64> %1236, <i64 -3689348814741910324, i64 -3689348814741910324>
  %1247 = and <2 x i64> %1245, <i64 3689348814741910323, i64 3689348814741910323>
  %1248 = or <2 x i64> %1246, %1247
  %1249 = bitcast <16 x i8> %1235 to <8 x i16>
  %1250 = call <8 x i16> @llvm_x86_sse2_pslli_w(<8 x i16> %1249, i32 2) #2
  %1251 = bitcast <8 x i16> %1250 to <2 x i64>
  %1252 = and <2 x i64> %1251, <i64 -3689348814741910324, i64 -3689348814741910324>
  %1253 = and <2 x i64> %1242, <i64 3689348814741910323, i64 3689348814741910323>
  %1254 = or <2 x i64> %1252, %1253
  %1255 = bitcast <2 x i64> %1176 to <8 x i16>
  %1256 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %1255, i32 8) #2
  %1257 = bitcast <2 x i64> %1200 to <8 x i16>
  %1258 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %1257, i32 8) #2
  %1259 = call <16 x i8> @llvm_x86_sse2_packuswb_128(<8 x i16> %1258, <8 x i16> %1256) #2
  %1260 = bitcast <16 x i8> %1259 to <2 x i64>
  %1261 = and <2 x i64> %1176, <i64 71777214294589695, i64 71777214294589695>
  %1262 = and <2 x i64> %1200, <i64 71777214294589695, i64 71777214294589695>
  %1263 = bitcast <2 x i64> %1262 to <8 x i16>
  %1264 = bitcast <2 x i64> %1261 to <8 x i16>
  %1265 = call <16 x i8> @llvm_x86_sse2_packuswb_128(<8 x i16> %1263, <8 x i16> %1264) #2
  %1266 = bitcast <16 x i8> %1265 to <2 x i64>
  %1267 = bitcast <16 x i8> %1265 to <8 x i16>
  %1268 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %1267, i32 4) #2
  %1269 = bitcast <8 x i16> %1268 to <2 x i64>
  %1270 = and <2 x i64> %1260, <i64 -1085102592571150096, i64 -1085102592571150096>
  %1271 = and <2 x i64> %1269, <i64 1085102592571150095, i64 1085102592571150095>
  %1272 = or <2 x i64> %1270, %1271
  %1273 = bitcast <16 x i8> %1259 to <8 x i16>
  %1274 = call <8 x i16> @llvm_x86_sse2_pslli_w(<8 x i16> %1273, i32 4) #2
  %1275 = bitcast <8 x i16> %1274 to <2 x i64>
  %1276 = and <2 x i64> %1275, <i64 -1085102592571150096, i64 -1085102592571150096>
  %1277 = and <2 x i64> %1266, <i64 1085102592571150095, i64 1085102592571150095>
  %1278 = or <2 x i64> %1276, %1277
  %1279 = bitcast <2 x i64> %1224 to <8 x i16>
  %1280 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %1279, i32 8) #2
  %1281 = bitcast <2 x i64> %1248 to <8 x i16>
  %1282 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %1281, i32 8) #2
  %1283 = call <16 x i8> @llvm_x86_sse2_packuswb_128(<8 x i16> %1282, <8 x i16> %1280) #2
  %1284 = bitcast <16 x i8> %1283 to <2 x i64>
  %1285 = and <2 x i64> %1224, <i64 71777214294589695, i64 71777214294589695>
  %1286 = and <2 x i64> %1248, <i64 71777214294589695, i64 71777214294589695>
  %1287 = bitcast <2 x i64> %1286 to <8 x i16>
  %1288 = bitcast <2 x i64> %1285 to <8 x i16>
  %1289 = call <16 x i8> @llvm_x86_sse2_packuswb_128(<8 x i16> %1287, <8 x i16> %1288) #2
  %1290 = bitcast <16 x i8> %1289 to <2 x i64>
  %1291 = bitcast <16 x i8> %1289 to <8 x i16>
  %1292 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %1291, i32 4) #2
  %1293 = bitcast <8 x i16> %1292 to <2 x i64>
  %1294 = and <2 x i64> %1284, <i64 -1085102592571150096, i64 -1085102592571150096>
  %1295 = and <2 x i64> %1293, <i64 1085102592571150095, i64 1085102592571150095>
  %1296 = or <2 x i64> %1294, %1295
  %1297 = bitcast <16 x i8> %1283 to <8 x i16>
  %1298 = call <8 x i16> @llvm_x86_sse2_pslli_w(<8 x i16> %1297, i32 4) #2
  %1299 = bitcast <8 x i16> %1298 to <2 x i64>
  %1300 = and <2 x i64> %1299, <i64 -1085102592571150096, i64 -1085102592571150096>
  %1301 = and <2 x i64> %1290, <i64 1085102592571150095, i64 1085102592571150095>
  %1302 = or <2 x i64> %1300, %1301
  %1303 = bitcast <2 x i64> %1182 to <8 x i16>
  %1304 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %1303, i32 8) #2
  %1305 = bitcast <2 x i64> %1206 to <8 x i16>
  %1306 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %1305, i32 8) #2
  %1307 = call <16 x i8> @llvm_x86_sse2_packuswb_128(<8 x i16> %1306, <8 x i16> %1304) #2
  %1308 = bitcast <16 x i8> %1307 to <2 x i64>
  %1309 = and <2 x i64> %1182, <i64 71777214294589695, i64 71777214294589695>
  %1310 = and <2 x i64> %1206, <i64 71777214294589695, i64 71777214294589695>
  %1311 = bitcast <2 x i64> %1310 to <8 x i16>
  %1312 = bitcast <2 x i64> %1309 to <8 x i16>
  %1313 = call <16 x i8> @llvm_x86_sse2_packuswb_128(<8 x i16> %1311, <8 x i16> %1312) #2
  %1314 = bitcast <16 x i8> %1313 to <2 x i64>
  %1315 = bitcast <16 x i8> %1313 to <8 x i16>
  %1316 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %1315, i32 4) #2
  %1317 = bitcast <8 x i16> %1316 to <2 x i64>
  %1318 = and <2 x i64> %1308, <i64 -1085102592571150096, i64 -1085102592571150096>
  %1319 = and <2 x i64> %1317, <i64 1085102592571150095, i64 1085102592571150095>
  %1320 = or <2 x i64> %1318, %1319
  %1321 = bitcast <16 x i8> %1307 to <8 x i16>
  %1322 = call <8 x i16> @llvm_x86_sse2_pslli_w(<8 x i16> %1321, i32 4) #2
  %1323 = bitcast <8 x i16> %1322 to <2 x i64>
  %1324 = and <2 x i64> %1323, <i64 -1085102592571150096, i64 -1085102592571150096>
  %1325 = and <2 x i64> %1314, <i64 1085102592571150095, i64 1085102592571150095>
  %1326 = or <2 x i64> %1324, %1325
  %1327 = bitcast <2 x i64> %1230 to <8 x i16>
  %1328 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %1327, i32 8) #2
  %1329 = bitcast <2 x i64> %1254 to <8 x i16>
  %1330 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %1329, i32 8) #2
  %1331 = call <16 x i8> @llvm_x86_sse2_packuswb_128(<8 x i16> %1330, <8 x i16> %1328) #2
  %1332 = bitcast <16 x i8> %1331 to <2 x i64>
  %1333 = and <2 x i64> %1230, <i64 71777214294589695, i64 71777214294589695>
  %1334 = and <2 x i64> %1254, <i64 71777214294589695, i64 71777214294589695>
  %1335 = bitcast <2 x i64> %1334 to <8 x i16>
  %1336 = bitcast <2 x i64> %1333 to <8 x i16>
  %1337 = call <16 x i8> @llvm_x86_sse2_packuswb_128(<8 x i16> %1335, <8 x i16> %1336) #2
  %1338 = bitcast <16 x i8> %1337 to <2 x i64>
  %1339 = bitcast <16 x i8> %1337 to <8 x i16>
  %1340 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %1339, i32 4) #2
  %1341 = bitcast <8 x i16> %1340 to <2 x i64>
  %1342 = and <2 x i64> %1332, <i64 -1085102592571150096, i64 -1085102592571150096>
  %1343 = and <2 x i64> %1341, <i64 1085102592571150095, i64 1085102592571150095>
  %1344 = or <2 x i64> %1342, %1343
  %1345 = bitcast <16 x i8> %1331 to <8 x i16>
  %1346 = call <8 x i16> @llvm_x86_sse2_pslli_w(<8 x i16> %1345, i32 4) #2
  %1347 = bitcast <8 x i16> %1346 to <2 x i64>
  %1348 = and <2 x i64> %1347, <i64 -1085102592571150096, i64 -1085102592571150096>
  %1349 = and <2 x i64> %1338, <i64 1085102592571150095, i64 1085102592571150095>
  %1350 = or <2 x i64> %1348, %1349
  %1351 = or <2 x i64> %1272, %1296
  %1352 = or <2 x i64> %1320, %1344
  %1353 = or <2 x i64> %1351, %1352
  %1354 = or <2 x i64> %1302, %1326
  %1355 = and <2 x i64> %1278, %1354
  %1356 = or <2 x i64> %1353, %1355
  %1357 = or <2 x i64> %1351, %1320
  %1358 = and <2 x i64> %1326, %1350
  %1359 = or <2 x i64> %1302, %1358
  %1360 = and <2 x i64> %1278, %1359
  %1361 = or <2 x i64> %1344, %1360
  %.not.i8.i = xor <2 x i64> %1361, <i64 -1, i64 -1>
  %1362 = or <2 x i64> %1357, %.not.i8.i
  %1363 = and <2 x i64> %1362, %1356
  %1364 = xor <2 x i64> %1351, <i64 -1, i64 -1>
  %1365 = and <2 x i64> %1320, %1364
  %1366 = or <2 x i64> %1278, %1302
  %1367 = or <2 x i64> %1326, %1350
  %1368 = or <2 x i64> %1366, %1367
  %1369 = or <2 x i64> %1344, %1368
  %1370 = and <2 x i64> %1365, %1369
  %1371 = or <2 x i64> %1352, %1368
  %1372 = and <2 x i64> %1296, %1371
  %1373 = or <2 x i64> %1272, %1372
  %.not2.i9.i = xor <2 x i64> %1363, <i64 -1, i64 -1>
  %.not1.i10.i = or <2 x i64> %1370, %.not2.i9.i
  %1374 = or <2 x i64> %1373, %.not1.i10.i
  %1375 = xor <2 x i64> %1272, <i64 -1, i64 -1>
  %1376 = and <2 x i64> %1296, %1375
  %1377 = xor <2 x i64> %1352, <i64 -1, i64 -1>
  %1378 = and <2 x i64> %1376, %1377
  %1379 = xor <2 x i64> %1368, <i64 -1, i64 -1>
  %1380 = and <2 x i64> %1378, %1379
  %1381 = xor <2 x i64> %1302, <i64 -1, i64 -1>
  %1382 = and <2 x i64> %1278, %1381
  %1383 = xor <2 x i64> %1350, <i64 -1, i64 -1>
  %1384 = and <2 x i64> %1326, %1383
  %1385 = and <2 x i64> %1382, %1384
  %1386 = xor <2 x i64> %1353, <i64 -1, i64 -1>
  %1387 = and <2 x i64> %1385, %1386
  %1388 = call <2 x i64> @llvm_x86_sse2_psrli_q(<2 x i64> %1374, i32 63) #2
  %1389 = shufflevector <2 x i64> %1032, <2 x i64> %1388, <2 x i32> <i32 0, i32 2>
  %1390 = shl <2 x i64> %1374, <i64 1, i64 1>
  %1391 = or <2 x i64> %1390, %1389
  %1392 = call <2 x i64> @llvm_x86_sse2_psrl_dq(<2 x i64> %1374, i32 64) #2
  %1393 = call <2 x i64> @llvm_x86_sse2_psrli_q(<2 x i64> %1392, i32 63) #2
  %1394 = and <2 x i64> %1374, %1391
  %1395 = add <2 x i64> %1394, %1374
  %1396 = add <2 x i64> %1395, %1033
  %1397 = xor <2 x i64> %1396, <i64 -1, i64 -1>
  %1398 = and <2 x i64> %1374, %1397
  %1399 = or <2 x i64> %1394, %1398
  %1400 = call <2 x i64> @llvm_x86_sse2_psrli_q(<2 x i64> %1399, i32 63) #2
  %1401 = call <2 x i64> @llvm_x86_sse2_psll_dq(<2 x i64> %1400, i32 64) #2
  %1402 = add <2 x i64> %1401, %1396
  %1403 = xor <2 x i64> %1402, <i64 -1, i64 -1>
  %1404 = and <2 x i64> %1374, %1403
  %1405 = or <2 x i64> %1394, %1404
  %1406 = xor <2 x i64> %1402, %1374
  %1407 = or <2 x i64> %1406, %1391
  %1408 = call <2 x i64> @llvm_x86_sse2_psrl_dq(<2 x i64> %1405, i32 64) #2
  %1409 = call <2 x i64> @llvm_x86_sse2_psrli_q(<2 x i64> %1408, i32 63) #2
  %1410 = and <2 x i64> %1407, %1380
  %1411 = call <2 x i64> @llvm_x86_sse2_psrli_q(<2 x i64> %1410, i32 63) #2
  %1412 = shufflevector <2 x i64> %1034, <2 x i64> %1411, <2 x i32> <i32 0, i32 2>
  %1413 = shl <2 x i64> %1410, <i64 1, i64 1>
  %1414 = or <2 x i64> %1413, %1412
  %1415 = call <2 x i64> @llvm_x86_sse2_psrl_dq(<2 x i64> %1410, i32 64) #2
  %1416 = call <2 x i64> @llvm_x86_sse2_psrli_q(<2 x i64> %1415, i32 63) #2
  %1417 = and <2 x i64> %1414, %1374
  %1418 = call <2 x i64> @llvm_x86_sse2_psrli_q(<2 x i64> %1417, i32 63) #2
  %1419 = shufflevector <2 x i64> %1035, <2 x i64> %1418, <2 x i32> <i32 0, i32 2>
  %1420 = shl <2 x i64> %1417, <i64 1, i64 1>
  %1421 = or <2 x i64> %1420, %1419
  %1422 = call <2 x i64> @llvm_x86_sse2_psrl_dq(<2 x i64> %1417, i32 64) #2
  %1423 = call <2 x i64> @llvm_x86_sse2_psrli_q(<2 x i64> %1422, i32 63) #2
  %1424 = and <2 x i64> %1374, %1421
  %1425 = add <2 x i64> %1424, %1374
  %1426 = add <2 x i64> %1425, %1036
  %1427 = xor <2 x i64> %1426, <i64 -1, i64 -1>
  %1428 = and <2 x i64> %1374, %1427
  %1429 = or <2 x i64> %1424, %1428
  %1430 = call <2 x i64> @llvm_x86_sse2_psrli_q(<2 x i64> %1429, i32 63) #2
  %1431 = call <2 x i64> @llvm_x86_sse2_psll_dq(<2 x i64> %1430, i32 64) #2
  %1432 = add <2 x i64> %1431, %1426
  %1433 = xor <2 x i64> %1432, <i64 -1, i64 -1>
  %1434 = and <2 x i64> %1374, %1433
  %1435 = or <2 x i64> %1424, %1434
  %1436 = xor <2 x i64> %1432, %1374
  %1437 = or <2 x i64> %1436, %1421
  %1438 = call <2 x i64> @llvm_x86_sse2_psrl_dq(<2 x i64> %1435, i32 64) #2
  %1439 = call <2 x i64> @llvm_x86_sse2_psrli_q(<2 x i64> %1438, i32 63) #2
  %1440 = bitcast <2 x i64> %1437 to <16 x i8>
  %1441 = icmp eq <16 x i8> %1440, zeroinitializer
  %1442 = sext <16 x i1> %1441 to <16 x i8>
  %1443 = call i32 @llvm_x86_sse2_pmovmskb_128(<16 x i8> %1442) #2
  %1444 = trunc i32 %1443 to i16
  %1445 = icmp eq i16 %1444, -1
  br i1 %1445, label %1446, label %._crit_edge.i6.i

; <label>:1446                                    ; preds = %.preheader73..preheader73.split_crit_edge.i
  %1447 = bitcast <2 x i64> %1037 to <16 x i8>
  %1448 = icmp eq <16 x i8> %1447, zeroinitializer
  %1449 = sext <16 x i1> %1448 to <16 x i8>
  %1450 = call i32 @llvm_x86_sse2_pmovmskb_128(<16 x i8> %1449) #2
  %1451 = trunc i32 %1450 to i16
  %1452 = icmp eq i16 %1451, -1
  br i1 %1452, label %1471, label %._crit_edge.i6.i

._crit_edge.i6.i:                                 ; preds = %1446, %.preheader73..preheader73.split_crit_edge.i
  %.not35.i = xor <2 x i64> %1385, <i64 -1, i64 -1>
  %1453 = or <2 x i64> %1353, %.not35.i
  %1454 = and <2 x i64> %1437, %1453
  %1455 = add <2 x i64> %1454, %1453
  %1456 = add <2 x i64> %1455, %1037
  %1457 = xor <2 x i64> %1456, <i64 -1, i64 -1>
  %1458 = and <2 x i64> %1453, %1457
  %1459 = or <2 x i64> %1454, %1458
  %1460 = call <2 x i64> @llvm_x86_sse2_psrli_q(<2 x i64> %1459, i32 63) #2
  %1461 = call <2 x i64> @llvm_x86_sse2_psll_dq(<2 x i64> %1460, i32 64) #2
  %1462 = add <2 x i64> %1461, %1456
  %1463 = xor <2 x i64> %1462, <i64 -1, i64 -1>
  %1464 = and <2 x i64> %1453, %1463
  %1465 = or <2 x i64> %1454, %1464
  %1466 = xor <2 x i64> %1462, %1453
  %1467 = or <2 x i64> %1466, %1437
  %1468 = call <2 x i64> @llvm_x86_sse2_psrl_dq(<2 x i64> %1465, i32 64) #2
  %1469 = call <2 x i64> @llvm_x86_sse2_psrli_q(<2 x i64> %1468, i32 63) #2
  %1470 = and <2 x i64> %1467, %1387
  br label %1471

; <label>:1471                                    ; preds = %._crit_edge.i6.i, %1446
  %1472 = phi <2 x i64> [ zeroinitializer, %1446 ], [ %1470, %._crit_edge.i6.i ]
  %1473 = phi <2 x i64> [ %1037, %1446 ], [ %1469, %._crit_edge.i6.i ]
  %1474 = getelementptr inbounds %class.BitStreamScanner* %LF_scanner.i, i64 0, i32 0, i32 0, i64 %indvars.iv147.i
  store <2 x i64> %1387, <2 x i64>* %1474, align 16, !tbaa !1
  %1475 = bitcast <2 x i64> %1387 to <4 x i32>
  %1476 = icmp eq <4 x i32> %1475, zeroinitializer
  %1477 = sext <4 x i1> %1476 to <4 x i32>
  %1478 = bitcast <4 x i32> %1477 to <2 x i64>
  %1479 = call <2 x i64> @llvm_x86_sse2_psrli_q(<2 x i64> %1478, i32 32) #2
  %1480 = and <2 x i64> %1478, %1479
  %1481 = call <2 x i64> @llvm_x86_sse2_pslli_q(<2 x i64> %1480, i32 32) #2
  %1482 = or <2 x i64> %1480, %1481
  %1483 = xor <2 x i64> %1482, <i64 -1, i64 -1>
  %1484 = bitcast <2 x i64> %1483 to <2 x double>
  %1485 = call i32 @llvm_x86_sse2_movmsk_pd(<2 x double> %1484) #2
  %1486 = zext i32 %1485 to i64
  %1487 = and i64 %1486, 255
  %1488 = shl nsw i64 %indvars.iv147.i, 1
  %1489 = shl i64 %1487, %1488
  %1490 = load i64* %60, align 16, !tbaa !4
  %1491 = add i64 %1489, %1490
  store i64 %1491, i64* %60, align 16, !tbaa !4
  %1492 = getelementptr inbounds %class.BitStreamScanner* %match_scanner.i, i64 0, i32 0, i32 0, i64 %indvars.iv147.i
  store <2 x i64> %1472, <2 x i64>* %1492, align 16, !tbaa !1
  %1493 = bitcast <2 x i64> %1472 to <4 x i32>
  %1494 = icmp eq <4 x i32> %1493, zeroinitializer
  %1495 = sext <4 x i1> %1494 to <4 x i32>
  %1496 = bitcast <4 x i32> %1495 to <2 x i64>
  %1497 = call <2 x i64> @llvm_x86_sse2_psrli_q(<2 x i64> %1496, i32 32) #2
  %1498 = and <2 x i64> %1496, %1497
  %1499 = call <2 x i64> @llvm_x86_sse2_pslli_q(<2 x i64> %1498, i32 32) #2
  %1500 = or <2 x i64> %1498, %1499
  %1501 = xor <2 x i64> %1500, <i64 -1, i64 -1>
  %1502 = bitcast <2 x i64> %1501 to <2 x double>
  %1503 = call i32 @llvm_x86_sse2_movmsk_pd(<2 x double> %1502) #2
  %1504 = zext i32 %1503 to i64
  %1505 = and i64 %1504, 255
  %1506 = shl i64 %1505, %1488
  %1507 = load i64* %61, align 16, !tbaa !4
  %1508 = add i64 %1506, %1507
  store i64 %1508, i64* %61, align 16, !tbaa !4
  %1509 = bitcast <2 x i64> %1472 to <16 x i8>
  %1510 = icmp eq <16 x i8> %1509, zeroinitializer
  %1511 = sext <16 x i1> %1510 to <16 x i8>
  %1512 = call i32 @llvm_x86_sse2_pmovmskb_128(<16 x i8> %1511) #2
  %1513 = trunc i32 %1512 to i16
  %1514 = icmp eq i16 %1513, -1
  br i1 %1514, label %1559, label %1515

; <label>:1515                                    ; preds = %1471
  %1516 = and <2 x i64> %match_vector.182.i, %1472
  %1517 = bitcast <2 x i64> %1516 to <16 x i8>
  %1518 = icmp eq <16 x i8> %1517, zeroinitializer
  %1519 = sext <16 x i1> %1518 to <16 x i8>
  %1520 = call i32 @llvm_x86_sse2_pmovmskb_128(<16 x i8> %1519) #2
  %1521 = trunc i32 %1520 to i16
  %1522 = icmp eq i16 %1521, -1
  br i1 %1522, label %1557, label %1523

; <label>:1523                                    ; preds = %1515
  %1524 = bitcast <2 x i64> %match_vector.182.i to <8 x i16>
  %1525 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %1524, i32 1) #2
  %1526 = bitcast <8 x i16> %1525 to <2 x i64>
  %1527 = and <2 x i64> %1526, <i64 6148914691236517205, i64 6148914691236517205>
  %1528 = bitcast <2 x i64> %1527 to <8 x i16>
  %1529 = sub <8 x i16> %1524, %1528
  %1530 = bitcast <8 x i16> %1529 to <2 x i64>
  %1531 = bitcast <8 x i16> %1529 to <4 x i32>
  %1532 = call <4 x i32> @llvm_x86_sse2_psrli_d(<4 x i32> %1531, i32 2) #2
  %1533 = bitcast <4 x i32> %1532 to <2 x i64>
  %1534 = and <2 x i64> %1533, <i64 3689348814741910323, i64 3689348814741910323>
  %1535 = and <2 x i64> %1530, <i64 3689348814741910323, i64 3689348814741910323>
  %1536 = bitcast <2 x i64> %1534 to <16 x i8>
  %1537 = bitcast <2 x i64> %1535 to <16 x i8>
  %1538 = add <16 x i8> %1536, %1537
  %1539 = bitcast <16 x i8> %1538 to <2 x i64>
  %1540 = bitcast <16 x i8> %1538 to <4 x i32>
  %1541 = call <4 x i32> @llvm_x86_sse2_psrli_d(<4 x i32> %1540, i32 4) #2
  %1542 = bitcast <4 x i32> %1541 to <2 x i64>
  %1543 = and <2 x i64> %1542, <i64 1085102592571150095, i64 1085102592571150095>
  %1544 = and <2 x i64> %1539, <i64 1085102592571150095, i64 1085102592571150095>
  %1545 = bitcast <2 x i64> %1543 to <8 x i16>
  %1546 = bitcast <2 x i64> %1544 to <8 x i16>
  %1547 = add <8 x i16> %1545, %1546
  %1548 = bitcast <8 x i16> %1547 to <16 x i8>
  %1549 = call <2 x i64> @llvm_x86_sse2_psad_bw(<16 x i8> %1548, <16 x i8> zeroinitializer) #2
  %1550 = and <2 x i64> %1549, <i64 -1, i64 0>
  %1551 = call <2 x i64> @llvm_x86_sse2_psrl_dq(<2 x i64> %1549, i32 64) #2
  %1552 = add <2 x i64> %1550, %1551
  %1553 = bitcast <2 x i64> %1552 to <8 x i16>
  %1554 = extractelement <8 x i16> %1553, i32 0
  %1555 = zext i16 %1554 to i32
  %1556 = add nsw i32 %1555, %match_count.181.i
  br label %1559

; <label>:1557                                    ; preds = %1515
  %1558 = or <2 x i64> %match_vector.182.i, %1472
  br label %1559

; <label>:1559                                    ; preds = %1557, %1523, %1471
  %match_count.2.i = phi i32 [ %1556, %1523 ], [ %match_count.181.i, %1471 ], [ %match_count.181.i, %1557 ]
  %match_vector.2.i = phi <2 x i64> [ %1472, %1523 ], [ %match_vector.182.i, %1471 ], [ %1558, %1557 ]
  %indvars.iv.next148.i = add i64 %indvars.iv147.i, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next148.i to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 15
  br i1 %exitcond, label %.us-lcssa.us.i, label %.preheader73..preheader73.split_crit_edge.i

.us-lcssa.us.i:                                   ; preds = %1559, %510
  %1560 = phi i64 [ %1491, %1559 ], [ %530, %510 ]
  %match_vector.1.lcssa.i = phi <2 x i64> [ %match_vector.2.i, %1559 ], [ %match_vector.0110.i, %510 ]
  %match_count.1.lcssa.i = phi i32 [ %match_count.2.i, %1559 ], [ %match_count.0109.i, %510 ]
  %.lcssa79.i = phi <2 x i64> [ %1393, %1559 ], [ %432, %510 ]
  %.lcssa78.i = phi <2 x i64> [ %1409, %1559 ], [ %448, %510 ]
  %.lcssa77.i = phi <2 x i64> [ %1416, %1559 ], [ %455, %510 ]
  %.lcssa76.i = phi <2 x i64> [ %1423, %1559 ], [ %462, %510 ]
  %.lcssa75.i = phi <2 x i64> [ %1439, %1559 ], [ %478, %510 ]
  %.lcssa74.i = phi <2 x i64> [ %1473, %1559 ], [ %512, %510 ]
  %1561 = call i64 @llvm.ctlz.i64(i64 %1560, i1 true) #2
  %1562 = trunc i64 %1561 to i32
  %1563 = sub i32 64, %1562
  %1564 = add i32 %1563, -1
  %1565 = sext i32 %1564 to i64
  %1566 = getelementptr inbounds [30 x i64]* %63, i64 0, i64 %1565
  %1567 = load i64* %1566, align 8, !tbaa !4
  %1568 = call i64 @llvm.ctlz.i64(i64 %1567, i1 true) #2
  %1569 = trunc i64 %1568 to i32
  %1570 = shl nsw i32 %1564, 6
  %1571 = or i32 %1570, %1569
  %1572 = xor i32 %1571, 63
  %1573 = add nsw i32 %1572, 1
  %1574 = sub i32 1919, %1572
  %1575 = sext i32 %1573 to i64
  %1576 = lshr i64 %1575, 6
  %1577 = trunc i64 %1576 to i32
  %1578 = and i32 %1573, 63
  %1579 = zext i32 %1578 to i64
  %1580 = shl i64 1, %1579
  %1581 = add i64 %1580, -1
  %sext.i.i = shl i64 %1576, 32
  %1582 = ashr exact i64 %sext.i.i, 32
  %1583 = getelementptr inbounds [30 x i64]* %64, i64 0, i64 %1582
  %1584 = load i64* %1583, align 8, !tbaa !4
  %1585 = and i64 %1581, %1584
  store i64 %1585, i64* %1583, align 8, !tbaa !4
  %not..i.i = icmp ne i64 %1585, 0
  %1586 = zext i1 %not..i.i to i32
  %1587 = add i32 %1586, %1577
  %1588 = load i64* %61, align 16, !tbaa !4
  %1589 = zext i32 %1587 to i64
  %1590 = shl i64 1, %1589
  %1591 = add i64 %1590, -1
  %1592 = and i64 %1591, %1588
  store i64 %1592, i64* %61, align 16, !tbaa !4
  %1593 = icmp slt i32 %1587, 30
  br i1 %1593, label %.lr.ph.i.i, label %_ZN16BitStreamScannerIDv2_xmmLi15EE10clear_fromEi.exit.i

.lr.ph.i.i:                                       ; preds = %.us-lcssa.us.i
  %1594 = sext i32 %1587 to i64
  %1595 = shl nsw i64 %1594, 3
  %uglygep.i.i = getelementptr i8* %55, i64 %1595
  %.neg.i = sext i1 %not..i.i to i64
  %1596 = sub i64 29, %1576
  %1597 = add i64 %1596, %.neg.i
  %1598 = shl nsw i64 %1597, 3
  %1599 = and i64 %1598, 34359738360
  %1600 = add i64 %1599, 8
  call void @llvm.memset.p0i8.i64(i8* %uglygep.i.i, i8 0, i64 %1600, i32 8, i1 false) #2
  br label %_ZN16BitStreamScannerIDv2_xmmLi15EE10clear_fromEi.exit.i

_ZN16BitStreamScannerIDv2_xmmLi15EE10clear_fromEi.exit.i: ; preds = %.lr.ph.i.i, %.us-lcssa.us.i
  br i1 %62, label %.preheader91.i, label %.loopexit96.i

.preheader91.i:                                   ; preds = %_ZN16BitStreamScannerIDv2_xmmLi15EE10clear_fromEi.exit.i
  %1601 = load i64* %61, align 16, !tbaa !4
  %1602 = icmp eq i64 %1601, 0
  br i1 %1602, label %thread-pre-split11.i, label %.lr.ph94.i

.lr.ph94.i:                                       ; preds = %1654, %.preheader91.i
  %1603 = phi i64 [ %.pr12181.i, %1654 ], [ %1560, %.preheader91.i ]
  %1604 = phi i64 [ %1617, %1654 ], [ %1601, %.preheader91.i ]
  %line_start.092.i = phi i32 [ %1657, %1654 ], [ 0, %.preheader91.i ]
  %1605 = call i64 @llvm.cttz.i64(i64 %1604, i1 true) #2
  %1606 = trunc i64 %1605 to i32
  %1607 = getelementptr inbounds [30 x i64]* %64, i64 0, i64 %1605
  %1608 = load i64* %1607, align 8, !tbaa !4
  %1609 = call i64 @llvm.cttz.i64(i64 %1608, i1 true) #2
  %1610 = trunc i64 %1609 to i32
  %1611 = add i64 %1608, -1
  %1612 = and i64 %1611, %1608
  store i64 %1612, i64* %1607, align 8, !tbaa !4
  %1613 = load i64* %61, align 16, !tbaa !4
  %1614 = icmp eq i64 %1612, 0
  %1615 = zext i1 %1614 to i64
  %1616 = sub i64 %1613, %1615
  %1617 = and i64 %1616, %1613
  store i64 %1617, i64* %61, align 16, !tbaa !4
  %1618 = shl nuw nsw i32 %1606, 6
  %1619 = or i32 %1610, %1618
  %1620 = call i64 @llvm.cttz.i64(i64 %1603, i1 true) #2
  %1621 = trunc i64 %1620 to i32
  %1622 = getelementptr inbounds [30 x i64]* %63, i64 0, i64 %1620
  %1623 = load i64* %1622, align 8, !tbaa !4
  %1624 = call i64 @llvm.cttz.i64(i64 %1623, i1 true) #2
  %1625 = trunc i64 %1624 to i32
  %1626 = add i64 %1623, -1
  %1627 = and i64 %1626, %1623
  store i64 %1627, i64* %1622, align 8, !tbaa !4
  %1628 = load i64* %60, align 16, !tbaa !4
  %1629 = icmp eq i64 %1627, 0
  %1630 = zext i1 %1629 to i64
  %1631 = sub i64 %1628, %1630
  %1632 = and i64 %1631, %1628
  store i64 %1632, i64* %60, align 16, !tbaa !4
  %1633 = shl nuw nsw i32 %1621, 6
  %1634 = or i32 %1625, %1633
  %1635 = icmp ult i32 %1634, %1619
  br i1 %1635, label %.lr.ph86.i, label %1654

.lr.ph86.i:                                       ; preds = %.lr.ph86.i, %.lr.ph94.i
  %1636 = phi i64 [ %1649, %.lr.ph86.i ], [ %1632, %.lr.ph94.i ]
  %line_end.083.i = phi i32 [ %1651, %.lr.ph86.i ], [ %1634, %.lr.ph94.i ]
  %1637 = call i64 @llvm.cttz.i64(i64 %1636, i1 true) #2
  %1638 = trunc i64 %1637 to i32
  %1639 = getelementptr inbounds [30 x i64]* %63, i64 0, i64 %1637
  %1640 = load i64* %1639, align 8, !tbaa !4
  %1641 = call i64 @llvm.cttz.i64(i64 %1640, i1 true) #2
  %1642 = trunc i64 %1641 to i32
  %1643 = add i64 %1640, -1
  %1644 = and i64 %1643, %1640
  store i64 %1644, i64* %1639, align 8, !tbaa !4
  %1645 = load i64* %60, align 16, !tbaa !4
  %1646 = icmp eq i64 %1644, 0
  %1647 = zext i1 %1646 to i64
  %1648 = sub i64 %1645, %1647
  %1649 = and i64 %1648, %1645
  store i64 %1649, i64* %60, align 16, !tbaa !4
  %1650 = shl nuw nsw i32 %1638, 6
  %1651 = or i32 %1642, %1650
  %1652 = icmp ult i32 %1651, %1619
  br i1 %1652, label %.lr.ph86.i, label %._crit_edge87.i

._crit_edge87.i:                                  ; preds = %.lr.ph86.i
  %1653 = add nsw i32 %line_end.083.i, 1
  br label %1654

; <label>:1654                                    ; preds = %._crit_edge87.i, %.lr.ph94.i
  %.pr12181.i = phi i64 [ %1649, %._crit_edge87.i ], [ %1632, %.lr.ph94.i ]
  %line_end.0.lcssa.i = phi i32 [ %1651, %._crit_edge87.i ], [ %1634, %.lr.ph94.i ]
  %line_start.1.lcssa.i = phi i32 [ %1653, %._crit_edge87.i ], [ %line_start.092.i, %.lr.ph94.i ]
  %1655 = sext i32 %line_start.1.lcssa.i to i64
  %1656 = getelementptr inbounds [1920 x i8]* %src_buffer.i, i64 0, i64 %1655
  %1657 = add i32 %line_end.0.lcssa.i, 1
  %1658 = sub i32 %1657, %line_start.1.lcssa.i
  %1659 = sext i32 %1658 to i64
  %1660 = call i64 @fwrite(i8* %1656, i64 1, i64 %1659, %struct._IO_FILE* %outfile.0) #2
  %1661 = icmp eq i64 %1617, 0
  br i1 %1661, label %thread-pre-split11.i, label %.lr.ph94.i

thread-pre-split11.i:                             ; preds = %1654, %.preheader91.i
  %.pr12.i = phi i64 [ %1560, %.preheader91.i ], [ %.pr12181.i, %1654 ]
  %1662 = icmp eq i64 %.pr12.i, 0
  br i1 %1662, label %.loopexit96.i, label %.lr.ph98.i

.lr.ph98.i:                                       ; preds = %.lr.ph98.i, %thread-pre-split11.i
  %1663 = phi i64 [ %1673, %.lr.ph98.i ], [ %.pr12.i, %thread-pre-split11.i ]
  %1664 = call i64 @llvm.cttz.i64(i64 %1663, i1 true) #2
  %1665 = getelementptr inbounds [30 x i64]* %63, i64 0, i64 %1664
  %1666 = load i64* %1665, align 8, !tbaa !4
  %1667 = add i64 %1666, -1
  %1668 = and i64 %1667, %1666
  store i64 %1668, i64* %1665, align 8, !tbaa !4
  %1669 = load i64* %60, align 16, !tbaa !4
  %1670 = icmp eq i64 %1668, 0
  %1671 = zext i1 %1670 to i64
  %1672 = sub i64 %1669, %1671
  %1673 = and i64 %1672, %1669
  store i64 %1673, i64* %60, align 16, !tbaa !4
  %1674 = icmp eq i64 %1673, 0
  br i1 %1674, label %.loopexit96.i, label %.lr.ph98.i

.loopexit96.i:                                    ; preds = %.lr.ph98.i, %thread-pre-split11.i, %_ZN16BitStreamScannerIDv2_xmmLi15EE10clear_fromEi.exit.i
  %1675 = getelementptr inbounds [1920 x i8]* %src_buffer.i, i64 0, i64 %1575
  %1676 = sext i32 %1574 to i64
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %56, i8* %1675, i64 %1676, i32 1, i1 false) #2
  %1677 = getelementptr inbounds [1920 x i8]* %src_buffer.i, i64 0, i64 %1676
  %1678 = call i64 @fread(i8* %1677, i64 1, i64 %1575, %struct._IO_FILE* %19) #2
  %1679 = trunc i64 %1678 to i32
  %1680 = add nsw i32 %1679, %1574
  %1681 = icmp sgt i32 %1680, 1919
  store i64 0, i64* %60, align 16, !tbaa !4
  store i64 0, i64* %61, align 16, !tbaa !4
  br i1 %1681, label %.preheader73.i, label %.preheader49.i

.lr.ph60..lr.ph60.split_crit_edge.i:              ; preds = %2208, %.lr.ph60.i
  %indvars.iv139.i = phi i64 [ %indvars.iv.next140.i, %2208 ], [ 0, %.lr.ph60.i ]
  %indvars.iv137.i = phi i64 [ %indvars.iv.next138.i, %2208 ], [ 0, %.lr.ph60.i ]
  %remaining.059.i = phi i32 [ %2209, %2208 ], [ %chars_avail.0.lcssa.i, %.lr.ph60.i ]
  %match_vector.358.i = phi <2 x i64> [ %match_vector.4.i, %2208 ], [ %match_vector.0.lcssa.i, %.lr.ph60.i ]
  %match_count.357.i = phi i32 [ %match_count.4.i, %2208 ], [ %match_count.0.lcssa.i, %.lr.ph60.i ]
  %1682 = phi <2 x i64> [ %2042, %2208 ], [ %.lcssa105.i, %.lr.ph60.i ]
  %1683 = phi <2 x i64> [ %2058, %2208 ], [ %.lcssa104.i, %.lr.ph60.i ]
  %1684 = phi <2 x i64> [ %2065, %2208 ], [ %.lcssa103.i, %.lr.ph60.i ]
  %1685 = phi <2 x i64> [ %2072, %2208 ], [ %.lcssa102.i, %.lr.ph60.i ]
  %1686 = phi <2 x i64> [ %2088, %2208 ], [ %.lcssa101.i, %.lr.ph60.i ]
  %1687 = phi <2 x i64> [ %2122, %2208 ], [ %.lcssa100.i, %.lr.ph60.i ]
  %1688 = getelementptr inbounds [1920 x i8]* %src_buffer.i, i64 0, i64 %indvars.iv139.i
  %1689 = bitcast i8* %1688 to <2 x i64>*
  %.sum20.i = or i64 %indvars.iv139.i, 112
  %1690 = getelementptr inbounds [1920 x i8]* %src_buffer.i, i64 0, i64 %.sum20.i
  %1691 = bitcast i8* %1690 to <2 x i64>*
  %1692 = load <2 x i64>* %1691, align 16, !tbaa !1
  %.sum21.i = or i64 %indvars.iv139.i, 96
  %1693 = getelementptr inbounds [1920 x i8]* %src_buffer.i, i64 0, i64 %.sum21.i
  %1694 = bitcast i8* %1693 to <2 x i64>*
  %1695 = load <2 x i64>* %1694, align 16, !tbaa !1
  %1696 = bitcast <2 x i64> %1692 to <8 x i16>
  %1697 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %1696, i32 8) #2
  %1698 = bitcast <2 x i64> %1695 to <8 x i16>
  %1699 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %1698, i32 8) #2
  %1700 = call <16 x i8> @llvm_x86_sse2_packuswb_128(<8 x i16> %1699, <8 x i16> %1697) #2
  %1701 = bitcast <16 x i8> %1700 to <2 x i64>
  %1702 = and <2 x i64> %1692, <i64 71777214294589695, i64 71777214294589695>
  %1703 = and <2 x i64> %1695, <i64 71777214294589695, i64 71777214294589695>
  %1704 = bitcast <2 x i64> %1703 to <8 x i16>
  %1705 = bitcast <2 x i64> %1702 to <8 x i16>
  %1706 = call <16 x i8> @llvm_x86_sse2_packuswb_128(<8 x i16> %1704, <8 x i16> %1705) #2
  %1707 = bitcast <16 x i8> %1706 to <2 x i64>
  %1708 = bitcast <16 x i8> %1706 to <8 x i16>
  %1709 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %1708, i32 1) #2
  %1710 = bitcast <8 x i16> %1709 to <2 x i64>
  %1711 = and <2 x i64> %1701, <i64 -6148914691236517206, i64 -6148914691236517206>
  %1712 = and <2 x i64> %1710, <i64 6148914691236517205, i64 6148914691236517205>
  %1713 = or <2 x i64> %1711, %1712
  %1714 = bitcast <16 x i8> %1700 to <8 x i16>
  %1715 = call <8 x i16> @llvm_x86_sse2_pslli_w(<8 x i16> %1714, i32 1) #2
  %1716 = bitcast <8 x i16> %1715 to <2 x i64>
  %1717 = and <2 x i64> %1716, <i64 -6148914691236517206, i64 -6148914691236517206>
  %1718 = and <2 x i64> %1707, <i64 6148914691236517205, i64 6148914691236517205>
  %1719 = or <2 x i64> %1717, %1718
  %.sum22.i = or i64 %indvars.iv139.i, 80
  %1720 = getelementptr inbounds [1920 x i8]* %src_buffer.i, i64 0, i64 %.sum22.i
  %1721 = bitcast i8* %1720 to <2 x i64>*
  %1722 = load <2 x i64>* %1721, align 16, !tbaa !1
  %.sum23.i = or i64 %indvars.iv139.i, 64
  %1723 = getelementptr inbounds [1920 x i8]* %src_buffer.i, i64 0, i64 %.sum23.i
  %1724 = bitcast i8* %1723 to <2 x i64>*
  %1725 = load <2 x i64>* %1724, align 16, !tbaa !1
  %1726 = bitcast <2 x i64> %1722 to <8 x i16>
  %1727 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %1726, i32 8) #2
  %1728 = bitcast <2 x i64> %1725 to <8 x i16>
  %1729 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %1728, i32 8) #2
  %1730 = call <16 x i8> @llvm_x86_sse2_packuswb_128(<8 x i16> %1729, <8 x i16> %1727) #2
  %1731 = bitcast <16 x i8> %1730 to <2 x i64>
  %1732 = and <2 x i64> %1722, <i64 71777214294589695, i64 71777214294589695>
  %1733 = and <2 x i64> %1725, <i64 71777214294589695, i64 71777214294589695>
  %1734 = bitcast <2 x i64> %1733 to <8 x i16>
  %1735 = bitcast <2 x i64> %1732 to <8 x i16>
  %1736 = call <16 x i8> @llvm_x86_sse2_packuswb_128(<8 x i16> %1734, <8 x i16> %1735) #2
  %1737 = bitcast <16 x i8> %1736 to <2 x i64>
  %1738 = bitcast <16 x i8> %1736 to <8 x i16>
  %1739 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %1738, i32 1) #2
  %1740 = bitcast <8 x i16> %1739 to <2 x i64>
  %1741 = and <2 x i64> %1731, <i64 -6148914691236517206, i64 -6148914691236517206>
  %1742 = and <2 x i64> %1740, <i64 6148914691236517205, i64 6148914691236517205>
  %1743 = or <2 x i64> %1741, %1742
  %1744 = bitcast <16 x i8> %1730 to <8 x i16>
  %1745 = call <8 x i16> @llvm_x86_sse2_pslli_w(<8 x i16> %1744, i32 1) #2
  %1746 = bitcast <8 x i16> %1745 to <2 x i64>
  %1747 = and <2 x i64> %1746, <i64 -6148914691236517206, i64 -6148914691236517206>
  %1748 = and <2 x i64> %1737, <i64 6148914691236517205, i64 6148914691236517205>
  %1749 = or <2 x i64> %1747, %1748
  %.sum24.i = or i64 %indvars.iv139.i, 48
  %1750 = getelementptr inbounds [1920 x i8]* %src_buffer.i, i64 0, i64 %.sum24.i
  %1751 = bitcast i8* %1750 to <2 x i64>*
  %1752 = load <2 x i64>* %1751, align 16, !tbaa !1
  %.sum25.i = or i64 %indvars.iv139.i, 32
  %1753 = getelementptr inbounds [1920 x i8]* %src_buffer.i, i64 0, i64 %.sum25.i
  %1754 = bitcast i8* %1753 to <2 x i64>*
  %1755 = load <2 x i64>* %1754, align 16, !tbaa !1
  %1756 = bitcast <2 x i64> %1752 to <8 x i16>
  %1757 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %1756, i32 8) #2
  %1758 = bitcast <2 x i64> %1755 to <8 x i16>
  %1759 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %1758, i32 8) #2
  %1760 = call <16 x i8> @llvm_x86_sse2_packuswb_128(<8 x i16> %1759, <8 x i16> %1757) #2
  %1761 = bitcast <16 x i8> %1760 to <2 x i64>
  %1762 = and <2 x i64> %1752, <i64 71777214294589695, i64 71777214294589695>
  %1763 = and <2 x i64> %1755, <i64 71777214294589695, i64 71777214294589695>
  %1764 = bitcast <2 x i64> %1763 to <8 x i16>
  %1765 = bitcast <2 x i64> %1762 to <8 x i16>
  %1766 = call <16 x i8> @llvm_x86_sse2_packuswb_128(<8 x i16> %1764, <8 x i16> %1765) #2
  %1767 = bitcast <16 x i8> %1766 to <2 x i64>
  %1768 = bitcast <16 x i8> %1766 to <8 x i16>
  %1769 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %1768, i32 1) #2
  %1770 = bitcast <8 x i16> %1769 to <2 x i64>
  %1771 = and <2 x i64> %1761, <i64 -6148914691236517206, i64 -6148914691236517206>
  %1772 = and <2 x i64> %1770, <i64 6148914691236517205, i64 6148914691236517205>
  %1773 = or <2 x i64> %1771, %1772
  %1774 = bitcast <16 x i8> %1760 to <8 x i16>
  %1775 = call <8 x i16> @llvm_x86_sse2_pslli_w(<8 x i16> %1774, i32 1) #2
  %1776 = bitcast <8 x i16> %1775 to <2 x i64>
  %1777 = and <2 x i64> %1776, <i64 -6148914691236517206, i64 -6148914691236517206>
  %1778 = and <2 x i64> %1767, <i64 6148914691236517205, i64 6148914691236517205>
  %1779 = or <2 x i64> %1777, %1778
  %.sum26.i = or i64 %indvars.iv139.i, 16
  %1780 = getelementptr inbounds [1920 x i8]* %src_buffer.i, i64 0, i64 %.sum26.i
  %1781 = bitcast i8* %1780 to <2 x i64>*
  %1782 = load <2 x i64>* %1781, align 16, !tbaa !1
  %1783 = load <2 x i64>* %1689, align 16, !tbaa !1
  %1784 = bitcast <2 x i64> %1782 to <8 x i16>
  %1785 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %1784, i32 8) #2
  %1786 = bitcast <2 x i64> %1783 to <8 x i16>
  %1787 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %1786, i32 8) #2
  %1788 = call <16 x i8> @llvm_x86_sse2_packuswb_128(<8 x i16> %1787, <8 x i16> %1785) #2
  %1789 = bitcast <16 x i8> %1788 to <2 x i64>
  %1790 = and <2 x i64> %1782, <i64 71777214294589695, i64 71777214294589695>
  %1791 = and <2 x i64> %1783, <i64 71777214294589695, i64 71777214294589695>
  %1792 = bitcast <2 x i64> %1791 to <8 x i16>
  %1793 = bitcast <2 x i64> %1790 to <8 x i16>
  %1794 = call <16 x i8> @llvm_x86_sse2_packuswb_128(<8 x i16> %1792, <8 x i16> %1793) #2
  %1795 = bitcast <16 x i8> %1794 to <2 x i64>
  %1796 = bitcast <16 x i8> %1794 to <8 x i16>
  %1797 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %1796, i32 1) #2
  %1798 = bitcast <8 x i16> %1797 to <2 x i64>
  %1799 = and <2 x i64> %1789, <i64 -6148914691236517206, i64 -6148914691236517206>
  %1800 = and <2 x i64> %1798, <i64 6148914691236517205, i64 6148914691236517205>
  %1801 = or <2 x i64> %1799, %1800
  %1802 = bitcast <16 x i8> %1788 to <8 x i16>
  %1803 = call <8 x i16> @llvm_x86_sse2_pslli_w(<8 x i16> %1802, i32 1) #2
  %1804 = bitcast <8 x i16> %1803 to <2 x i64>
  %1805 = and <2 x i64> %1804, <i64 -6148914691236517206, i64 -6148914691236517206>
  %1806 = and <2 x i64> %1795, <i64 6148914691236517205, i64 6148914691236517205>
  %1807 = or <2 x i64> %1805, %1806
  %1808 = bitcast <2 x i64> %1713 to <8 x i16>
  %1809 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %1808, i32 8) #2
  %1810 = bitcast <2 x i64> %1743 to <8 x i16>
  %1811 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %1810, i32 8) #2
  %1812 = call <16 x i8> @llvm_x86_sse2_packuswb_128(<8 x i16> %1811, <8 x i16> %1809) #2
  %1813 = bitcast <16 x i8> %1812 to <2 x i64>
  %1814 = and <2 x i64> %1713, <i64 71777214294589695, i64 71777214294589695>
  %1815 = and <2 x i64> %1743, <i64 71777214294589695, i64 71777214294589695>
  %1816 = bitcast <2 x i64> %1815 to <8 x i16>
  %1817 = bitcast <2 x i64> %1814 to <8 x i16>
  %1818 = call <16 x i8> @llvm_x86_sse2_packuswb_128(<8 x i16> %1816, <8 x i16> %1817) #2
  %1819 = bitcast <16 x i8> %1818 to <2 x i64>
  %1820 = bitcast <16 x i8> %1818 to <8 x i16>
  %1821 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %1820, i32 2) #2
  %1822 = bitcast <8 x i16> %1821 to <2 x i64>
  %1823 = and <2 x i64> %1813, <i64 -3689348814741910324, i64 -3689348814741910324>
  %1824 = and <2 x i64> %1822, <i64 3689348814741910323, i64 3689348814741910323>
  %1825 = or <2 x i64> %1823, %1824
  %1826 = bitcast <16 x i8> %1812 to <8 x i16>
  %1827 = call <8 x i16> @llvm_x86_sse2_pslli_w(<8 x i16> %1826, i32 2) #2
  %1828 = bitcast <8 x i16> %1827 to <2 x i64>
  %1829 = and <2 x i64> %1828, <i64 -3689348814741910324, i64 -3689348814741910324>
  %1830 = and <2 x i64> %1819, <i64 3689348814741910323, i64 3689348814741910323>
  %1831 = or <2 x i64> %1829, %1830
  %1832 = bitcast <2 x i64> %1773 to <8 x i16>
  %1833 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %1832, i32 8) #2
  %1834 = bitcast <2 x i64> %1801 to <8 x i16>
  %1835 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %1834, i32 8) #2
  %1836 = call <16 x i8> @llvm_x86_sse2_packuswb_128(<8 x i16> %1835, <8 x i16> %1833) #2
  %1837 = bitcast <16 x i8> %1836 to <2 x i64>
  %1838 = and <2 x i64> %1773, <i64 71777214294589695, i64 71777214294589695>
  %1839 = and <2 x i64> %1801, <i64 71777214294589695, i64 71777214294589695>
  %1840 = bitcast <2 x i64> %1839 to <8 x i16>
  %1841 = bitcast <2 x i64> %1838 to <8 x i16>
  %1842 = call <16 x i8> @llvm_x86_sse2_packuswb_128(<8 x i16> %1840, <8 x i16> %1841) #2
  %1843 = bitcast <16 x i8> %1842 to <2 x i64>
  %1844 = bitcast <16 x i8> %1842 to <8 x i16>
  %1845 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %1844, i32 2) #2
  %1846 = bitcast <8 x i16> %1845 to <2 x i64>
  %1847 = and <2 x i64> %1837, <i64 -3689348814741910324, i64 -3689348814741910324>
  %1848 = and <2 x i64> %1846, <i64 3689348814741910323, i64 3689348814741910323>
  %1849 = or <2 x i64> %1847, %1848
  %1850 = bitcast <16 x i8> %1836 to <8 x i16>
  %1851 = call <8 x i16> @llvm_x86_sse2_pslli_w(<8 x i16> %1850, i32 2) #2
  %1852 = bitcast <8 x i16> %1851 to <2 x i64>
  %1853 = and <2 x i64> %1852, <i64 -3689348814741910324, i64 -3689348814741910324>
  %1854 = and <2 x i64> %1843, <i64 3689348814741910323, i64 3689348814741910323>
  %1855 = or <2 x i64> %1853, %1854
  %1856 = bitcast <2 x i64> %1719 to <8 x i16>
  %1857 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %1856, i32 8) #2
  %1858 = bitcast <2 x i64> %1749 to <8 x i16>
  %1859 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %1858, i32 8) #2
  %1860 = call <16 x i8> @llvm_x86_sse2_packuswb_128(<8 x i16> %1859, <8 x i16> %1857) #2
  %1861 = bitcast <16 x i8> %1860 to <2 x i64>
  %1862 = and <2 x i64> %1719, <i64 71777214294589695, i64 71777214294589695>
  %1863 = and <2 x i64> %1749, <i64 71777214294589695, i64 71777214294589695>
  %1864 = bitcast <2 x i64> %1863 to <8 x i16>
  %1865 = bitcast <2 x i64> %1862 to <8 x i16>
  %1866 = call <16 x i8> @llvm_x86_sse2_packuswb_128(<8 x i16> %1864, <8 x i16> %1865) #2
  %1867 = bitcast <16 x i8> %1866 to <2 x i64>
  %1868 = bitcast <16 x i8> %1866 to <8 x i16>
  %1869 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %1868, i32 2) #2
  %1870 = bitcast <8 x i16> %1869 to <2 x i64>
  %1871 = and <2 x i64> %1861, <i64 -3689348814741910324, i64 -3689348814741910324>
  %1872 = and <2 x i64> %1870, <i64 3689348814741910323, i64 3689348814741910323>
  %1873 = or <2 x i64> %1871, %1872
  %1874 = bitcast <16 x i8> %1860 to <8 x i16>
  %1875 = call <8 x i16> @llvm_x86_sse2_pslli_w(<8 x i16> %1874, i32 2) #2
  %1876 = bitcast <8 x i16> %1875 to <2 x i64>
  %1877 = and <2 x i64> %1876, <i64 -3689348814741910324, i64 -3689348814741910324>
  %1878 = and <2 x i64> %1867, <i64 3689348814741910323, i64 3689348814741910323>
  %1879 = or <2 x i64> %1877, %1878
  %1880 = bitcast <2 x i64> %1779 to <8 x i16>
  %1881 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %1880, i32 8) #2
  %1882 = bitcast <2 x i64> %1807 to <8 x i16>
  %1883 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %1882, i32 8) #2
  %1884 = call <16 x i8> @llvm_x86_sse2_packuswb_128(<8 x i16> %1883, <8 x i16> %1881) #2
  %1885 = bitcast <16 x i8> %1884 to <2 x i64>
  %1886 = and <2 x i64> %1779, <i64 71777214294589695, i64 71777214294589695>
  %1887 = and <2 x i64> %1807, <i64 71777214294589695, i64 71777214294589695>
  %1888 = bitcast <2 x i64> %1887 to <8 x i16>
  %1889 = bitcast <2 x i64> %1886 to <8 x i16>
  %1890 = call <16 x i8> @llvm_x86_sse2_packuswb_128(<8 x i16> %1888, <8 x i16> %1889) #2
  %1891 = bitcast <16 x i8> %1890 to <2 x i64>
  %1892 = bitcast <16 x i8> %1890 to <8 x i16>
  %1893 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %1892, i32 2) #2
  %1894 = bitcast <8 x i16> %1893 to <2 x i64>
  %1895 = and <2 x i64> %1885, <i64 -3689348814741910324, i64 -3689348814741910324>
  %1896 = and <2 x i64> %1894, <i64 3689348814741910323, i64 3689348814741910323>
  %1897 = or <2 x i64> %1895, %1896
  %1898 = bitcast <16 x i8> %1884 to <8 x i16>
  %1899 = call <8 x i16> @llvm_x86_sse2_pslli_w(<8 x i16> %1898, i32 2) #2
  %1900 = bitcast <8 x i16> %1899 to <2 x i64>
  %1901 = and <2 x i64> %1900, <i64 -3689348814741910324, i64 -3689348814741910324>
  %1902 = and <2 x i64> %1891, <i64 3689348814741910323, i64 3689348814741910323>
  %1903 = or <2 x i64> %1901, %1902
  %1904 = bitcast <2 x i64> %1825 to <8 x i16>
  %1905 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %1904, i32 8) #2
  %1906 = bitcast <2 x i64> %1849 to <8 x i16>
  %1907 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %1906, i32 8) #2
  %1908 = call <16 x i8> @llvm_x86_sse2_packuswb_128(<8 x i16> %1907, <8 x i16> %1905) #2
  %1909 = bitcast <16 x i8> %1908 to <2 x i64>
  %1910 = and <2 x i64> %1825, <i64 71777214294589695, i64 71777214294589695>
  %1911 = and <2 x i64> %1849, <i64 71777214294589695, i64 71777214294589695>
  %1912 = bitcast <2 x i64> %1911 to <8 x i16>
  %1913 = bitcast <2 x i64> %1910 to <8 x i16>
  %1914 = call <16 x i8> @llvm_x86_sse2_packuswb_128(<8 x i16> %1912, <8 x i16> %1913) #2
  %1915 = bitcast <16 x i8> %1914 to <2 x i64>
  %1916 = bitcast <16 x i8> %1914 to <8 x i16>
  %1917 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %1916, i32 4) #2
  %1918 = bitcast <8 x i16> %1917 to <2 x i64>
  %1919 = and <2 x i64> %1909, <i64 -1085102592571150096, i64 -1085102592571150096>
  %1920 = and <2 x i64> %1918, <i64 1085102592571150095, i64 1085102592571150095>
  %1921 = or <2 x i64> %1919, %1920
  %1922 = bitcast <16 x i8> %1908 to <8 x i16>
  %1923 = call <8 x i16> @llvm_x86_sse2_pslli_w(<8 x i16> %1922, i32 4) #2
  %1924 = bitcast <8 x i16> %1923 to <2 x i64>
  %1925 = and <2 x i64> %1924, <i64 -1085102592571150096, i64 -1085102592571150096>
  %1926 = and <2 x i64> %1915, <i64 1085102592571150095, i64 1085102592571150095>
  %1927 = or <2 x i64> %1925, %1926
  %1928 = bitcast <2 x i64> %1873 to <8 x i16>
  %1929 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %1928, i32 8) #2
  %1930 = bitcast <2 x i64> %1897 to <8 x i16>
  %1931 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %1930, i32 8) #2
  %1932 = call <16 x i8> @llvm_x86_sse2_packuswb_128(<8 x i16> %1931, <8 x i16> %1929) #2
  %1933 = bitcast <16 x i8> %1932 to <2 x i64>
  %1934 = and <2 x i64> %1873, <i64 71777214294589695, i64 71777214294589695>
  %1935 = and <2 x i64> %1897, <i64 71777214294589695, i64 71777214294589695>
  %1936 = bitcast <2 x i64> %1935 to <8 x i16>
  %1937 = bitcast <2 x i64> %1934 to <8 x i16>
  %1938 = call <16 x i8> @llvm_x86_sse2_packuswb_128(<8 x i16> %1936, <8 x i16> %1937) #2
  %1939 = bitcast <16 x i8> %1938 to <2 x i64>
  %1940 = bitcast <16 x i8> %1938 to <8 x i16>
  %1941 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %1940, i32 4) #2
  %1942 = bitcast <8 x i16> %1941 to <2 x i64>
  %1943 = and <2 x i64> %1933, <i64 -1085102592571150096, i64 -1085102592571150096>
  %1944 = and <2 x i64> %1942, <i64 1085102592571150095, i64 1085102592571150095>
  %1945 = or <2 x i64> %1943, %1944
  %1946 = bitcast <16 x i8> %1932 to <8 x i16>
  %1947 = call <8 x i16> @llvm_x86_sse2_pslli_w(<8 x i16> %1946, i32 4) #2
  %1948 = bitcast <8 x i16> %1947 to <2 x i64>
  %1949 = and <2 x i64> %1948, <i64 -1085102592571150096, i64 -1085102592571150096>
  %1950 = and <2 x i64> %1939, <i64 1085102592571150095, i64 1085102592571150095>
  %1951 = or <2 x i64> %1949, %1950
  %1952 = bitcast <2 x i64> %1831 to <8 x i16>
  %1953 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %1952, i32 8) #2
  %1954 = bitcast <2 x i64> %1855 to <8 x i16>
  %1955 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %1954, i32 8) #2
  %1956 = call <16 x i8> @llvm_x86_sse2_packuswb_128(<8 x i16> %1955, <8 x i16> %1953) #2
  %1957 = bitcast <16 x i8> %1956 to <2 x i64>
  %1958 = and <2 x i64> %1831, <i64 71777214294589695, i64 71777214294589695>
  %1959 = and <2 x i64> %1855, <i64 71777214294589695, i64 71777214294589695>
  %1960 = bitcast <2 x i64> %1959 to <8 x i16>
  %1961 = bitcast <2 x i64> %1958 to <8 x i16>
  %1962 = call <16 x i8> @llvm_x86_sse2_packuswb_128(<8 x i16> %1960, <8 x i16> %1961) #2
  %1963 = bitcast <16 x i8> %1962 to <2 x i64>
  %1964 = bitcast <16 x i8> %1962 to <8 x i16>
  %1965 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %1964, i32 4) #2
  %1966 = bitcast <8 x i16> %1965 to <2 x i64>
  %1967 = and <2 x i64> %1957, <i64 -1085102592571150096, i64 -1085102592571150096>
  %1968 = and <2 x i64> %1966, <i64 1085102592571150095, i64 1085102592571150095>
  %1969 = or <2 x i64> %1967, %1968
  %1970 = bitcast <16 x i8> %1956 to <8 x i16>
  %1971 = call <8 x i16> @llvm_x86_sse2_pslli_w(<8 x i16> %1970, i32 4) #2
  %1972 = bitcast <8 x i16> %1971 to <2 x i64>
  %1973 = and <2 x i64> %1972, <i64 -1085102592571150096, i64 -1085102592571150096>
  %1974 = and <2 x i64> %1963, <i64 1085102592571150095, i64 1085102592571150095>
  %1975 = or <2 x i64> %1973, %1974
  %1976 = bitcast <2 x i64> %1879 to <8 x i16>
  %1977 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %1976, i32 8) #2
  %1978 = bitcast <2 x i64> %1903 to <8 x i16>
  %1979 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %1978, i32 8) #2
  %1980 = call <16 x i8> @llvm_x86_sse2_packuswb_128(<8 x i16> %1979, <8 x i16> %1977) #2
  %1981 = bitcast <16 x i8> %1980 to <2 x i64>
  %1982 = and <2 x i64> %1879, <i64 71777214294589695, i64 71777214294589695>
  %1983 = and <2 x i64> %1903, <i64 71777214294589695, i64 71777214294589695>
  %1984 = bitcast <2 x i64> %1983 to <8 x i16>
  %1985 = bitcast <2 x i64> %1982 to <8 x i16>
  %1986 = call <16 x i8> @llvm_x86_sse2_packuswb_128(<8 x i16> %1984, <8 x i16> %1985) #2
  %1987 = bitcast <16 x i8> %1986 to <2 x i64>
  %1988 = bitcast <16 x i8> %1986 to <8 x i16>
  %1989 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %1988, i32 4) #2
  %1990 = bitcast <8 x i16> %1989 to <2 x i64>
  %1991 = and <2 x i64> %1981, <i64 -1085102592571150096, i64 -1085102592571150096>
  %1992 = and <2 x i64> %1990, <i64 1085102592571150095, i64 1085102592571150095>
  %1993 = or <2 x i64> %1991, %1992
  %1994 = bitcast <16 x i8> %1980 to <8 x i16>
  %1995 = call <8 x i16> @llvm_x86_sse2_pslli_w(<8 x i16> %1994, i32 4) #2
  %1996 = bitcast <8 x i16> %1995 to <2 x i64>
  %1997 = and <2 x i64> %1996, <i64 -1085102592571150096, i64 -1085102592571150096>
  %1998 = and <2 x i64> %1987, <i64 1085102592571150095, i64 1085102592571150095>
  %1999 = or <2 x i64> %1997, %1998
  %2000 = or <2 x i64> %1921, %1945
  %2001 = or <2 x i64> %1969, %1993
  %2002 = or <2 x i64> %2000, %2001
  %2003 = or <2 x i64> %1951, %1975
  %2004 = and <2 x i64> %1927, %2003
  %2005 = or <2 x i64> %2002, %2004
  %2006 = or <2 x i64> %2000, %1969
  %2007 = and <2 x i64> %1975, %1999
  %2008 = or <2 x i64> %1951, %2007
  %2009 = and <2 x i64> %1927, %2008
  %2010 = or <2 x i64> %1993, %2009
  %.not.i3.i = xor <2 x i64> %2010, <i64 -1, i64 -1>
  %2011 = or <2 x i64> %2006, %.not.i3.i
  %2012 = and <2 x i64> %2011, %2005
  %2013 = xor <2 x i64> %2000, <i64 -1, i64 -1>
  %2014 = and <2 x i64> %1969, %2013
  %2015 = or <2 x i64> %1927, %1951
  %2016 = or <2 x i64> %1975, %1999
  %2017 = or <2 x i64> %2015, %2016
  %2018 = or <2 x i64> %1993, %2017
  %2019 = and <2 x i64> %2014, %2018
  %2020 = or <2 x i64> %2001, %2017
  %2021 = and <2 x i64> %1945, %2020
  %2022 = or <2 x i64> %1921, %2021
  %.not2.i4.i = xor <2 x i64> %2012, <i64 -1, i64 -1>
  %.not1.i5.i = or <2 x i64> %2019, %.not2.i4.i
  %2023 = or <2 x i64> %2022, %.not1.i5.i
  %2024 = xor <2 x i64> %1921, <i64 -1, i64 -1>
  %2025 = and <2 x i64> %1945, %2024
  %2026 = xor <2 x i64> %2001, <i64 -1, i64 -1>
  %2027 = and <2 x i64> %2025, %2026
  %2028 = xor <2 x i64> %2017, <i64 -1, i64 -1>
  %2029 = and <2 x i64> %2027, %2028
  %2030 = xor <2 x i64> %1951, <i64 -1, i64 -1>
  %2031 = and <2 x i64> %1927, %2030
  %2032 = xor <2 x i64> %1999, <i64 -1, i64 -1>
  %2033 = and <2 x i64> %1975, %2032
  %2034 = and <2 x i64> %2031, %2033
  %2035 = xor <2 x i64> %2002, <i64 -1, i64 -1>
  %2036 = and <2 x i64> %2034, %2035
  %2037 = call <2 x i64> @llvm_x86_sse2_psrli_q(<2 x i64> %2023, i32 63) #2
  %2038 = shufflevector <2 x i64> %1682, <2 x i64> %2037, <2 x i32> <i32 0, i32 2>
  %2039 = shl <2 x i64> %2023, <i64 1, i64 1>
  %2040 = or <2 x i64> %2039, %2038
  %2041 = call <2 x i64> @llvm_x86_sse2_psrl_dq(<2 x i64> %2023, i32 64) #2
  %2042 = call <2 x i64> @llvm_x86_sse2_psrli_q(<2 x i64> %2041, i32 63) #2
  %2043 = and <2 x i64> %2023, %2040
  %2044 = add <2 x i64> %2043, %2023
  %2045 = add <2 x i64> %2044, %1683
  %2046 = xor <2 x i64> %2045, <i64 -1, i64 -1>
  %2047 = and <2 x i64> %2023, %2046
  %2048 = or <2 x i64> %2043, %2047
  %2049 = call <2 x i64> @llvm_x86_sse2_psrli_q(<2 x i64> %2048, i32 63) #2
  %2050 = call <2 x i64> @llvm_x86_sse2_psll_dq(<2 x i64> %2049, i32 64) #2
  %2051 = add <2 x i64> %2050, %2045
  %2052 = xor <2 x i64> %2051, <i64 -1, i64 -1>
  %2053 = and <2 x i64> %2023, %2052
  %2054 = or <2 x i64> %2043, %2053
  %2055 = xor <2 x i64> %2051, %2023
  %2056 = or <2 x i64> %2055, %2040
  %2057 = call <2 x i64> @llvm_x86_sse2_psrl_dq(<2 x i64> %2054, i32 64) #2
  %2058 = call <2 x i64> @llvm_x86_sse2_psrli_q(<2 x i64> %2057, i32 63) #2
  %2059 = and <2 x i64> %2056, %2029
  %2060 = call <2 x i64> @llvm_x86_sse2_psrli_q(<2 x i64> %2059, i32 63) #2
  %2061 = shufflevector <2 x i64> %1684, <2 x i64> %2060, <2 x i32> <i32 0, i32 2>
  %2062 = shl <2 x i64> %2059, <i64 1, i64 1>
  %2063 = or <2 x i64> %2062, %2061
  %2064 = call <2 x i64> @llvm_x86_sse2_psrl_dq(<2 x i64> %2059, i32 64) #2
  %2065 = call <2 x i64> @llvm_x86_sse2_psrli_q(<2 x i64> %2064, i32 63) #2
  %2066 = and <2 x i64> %2063, %2023
  %2067 = call <2 x i64> @llvm_x86_sse2_psrli_q(<2 x i64> %2066, i32 63) #2
  %2068 = shufflevector <2 x i64> %1685, <2 x i64> %2067, <2 x i32> <i32 0, i32 2>
  %2069 = shl <2 x i64> %2066, <i64 1, i64 1>
  %2070 = or <2 x i64> %2069, %2068
  %2071 = call <2 x i64> @llvm_x86_sse2_psrl_dq(<2 x i64> %2066, i32 64) #2
  %2072 = call <2 x i64> @llvm_x86_sse2_psrli_q(<2 x i64> %2071, i32 63) #2
  %2073 = and <2 x i64> %2023, %2070
  %2074 = add <2 x i64> %2073, %2023
  %2075 = add <2 x i64> %2074, %1686
  %2076 = xor <2 x i64> %2075, <i64 -1, i64 -1>
  %2077 = and <2 x i64> %2023, %2076
  %2078 = or <2 x i64> %2073, %2077
  %2079 = call <2 x i64> @llvm_x86_sse2_psrli_q(<2 x i64> %2078, i32 63) #2
  %2080 = call <2 x i64> @llvm_x86_sse2_psll_dq(<2 x i64> %2079, i32 64) #2
  %2081 = add <2 x i64> %2080, %2075
  %2082 = xor <2 x i64> %2081, <i64 -1, i64 -1>
  %2083 = and <2 x i64> %2023, %2082
  %2084 = or <2 x i64> %2073, %2083
  %2085 = xor <2 x i64> %2081, %2023
  %2086 = or <2 x i64> %2085, %2070
  %2087 = call <2 x i64> @llvm_x86_sse2_psrl_dq(<2 x i64> %2084, i32 64) #2
  %2088 = call <2 x i64> @llvm_x86_sse2_psrli_q(<2 x i64> %2087, i32 63) #2
  %2089 = bitcast <2 x i64> %2086 to <16 x i8>
  %2090 = icmp eq <16 x i8> %2089, zeroinitializer
  %2091 = sext <16 x i1> %2090 to <16 x i8>
  %2092 = call i32 @llvm_x86_sse2_pmovmskb_128(<16 x i8> %2091) #2
  %2093 = trunc i32 %2092 to i16
  %2094 = icmp eq i16 %2093, -1
  br i1 %2094, label %2095, label %._crit_edge.i2.i

; <label>:2095                                    ; preds = %.lr.ph60..lr.ph60.split_crit_edge.i
  %2096 = bitcast <2 x i64> %1687 to <16 x i8>
  %2097 = icmp eq <16 x i8> %2096, zeroinitializer
  %2098 = sext <16 x i1> %2097 to <16 x i8>
  %2099 = call i32 @llvm_x86_sse2_pmovmskb_128(<16 x i8> %2098) #2
  %2100 = trunc i32 %2099 to i16
  %2101 = icmp eq i16 %2100, -1
  br i1 %2101, label %2120, label %._crit_edge.i2.i

._crit_edge.i2.i:                                 ; preds = %2095, %.lr.ph60..lr.ph60.split_crit_edge.i
  %.not27.i = xor <2 x i64> %2034, <i64 -1, i64 -1>
  %2102 = or <2 x i64> %2002, %.not27.i
  %2103 = and <2 x i64> %2086, %2102
  %2104 = add <2 x i64> %2103, %2102
  %2105 = add <2 x i64> %2104, %1687
  %2106 = xor <2 x i64> %2105, <i64 -1, i64 -1>
  %2107 = and <2 x i64> %2102, %2106
  %2108 = or <2 x i64> %2103, %2107
  %2109 = call <2 x i64> @llvm_x86_sse2_psrli_q(<2 x i64> %2108, i32 63) #2
  %2110 = call <2 x i64> @llvm_x86_sse2_psll_dq(<2 x i64> %2109, i32 64) #2
  %2111 = add <2 x i64> %2110, %2105
  %2112 = xor <2 x i64> %2111, <i64 -1, i64 -1>
  %2113 = and <2 x i64> %2102, %2112
  %2114 = or <2 x i64> %2103, %2113
  %2115 = xor <2 x i64> %2111, %2102
  %2116 = or <2 x i64> %2115, %2086
  %2117 = call <2 x i64> @llvm_x86_sse2_psrl_dq(<2 x i64> %2114, i32 64) #2
  %2118 = call <2 x i64> @llvm_x86_sse2_psrli_q(<2 x i64> %2117, i32 63) #2
  %2119 = and <2 x i64> %2116, %2036
  br label %2120

; <label>:2120                                    ; preds = %._crit_edge.i2.i, %2095
  %2121 = phi <2 x i64> [ zeroinitializer, %2095 ], [ %2119, %._crit_edge.i2.i ]
  %2122 = phi <2 x i64> [ %1687, %2095 ], [ %2118, %._crit_edge.i2.i ]
  %2123 = getelementptr inbounds %class.BitStreamScanner* %LF_scanner.i, i64 0, i32 0, i32 0, i64 %indvars.iv137.i
  store <2 x i64> %2036, <2 x i64>* %2123, align 16, !tbaa !1
  %2124 = bitcast <2 x i64> %2036 to <4 x i32>
  %2125 = icmp eq <4 x i32> %2124, zeroinitializer
  %2126 = sext <4 x i1> %2125 to <4 x i32>
  %2127 = bitcast <4 x i32> %2126 to <2 x i64>
  %2128 = call <2 x i64> @llvm_x86_sse2_psrli_q(<2 x i64> %2127, i32 32) #2
  %2129 = and <2 x i64> %2127, %2128
  %2130 = call <2 x i64> @llvm_x86_sse2_pslli_q(<2 x i64> %2129, i32 32) #2
  %2131 = or <2 x i64> %2129, %2130
  %2132 = xor <2 x i64> %2131, <i64 -1, i64 -1>
  %2133 = bitcast <2 x i64> %2132 to <2 x double>
  %2134 = call i32 @llvm_x86_sse2_movmsk_pd(<2 x double> %2133) #2
  %2135 = zext i32 %2134 to i64
  %2136 = and i64 %2135, 255
  %2137 = shl nsw i64 %indvars.iv137.i, 1
  %2138 = shl i64 %2136, %2137
  %2139 = load i64* %60, align 16, !tbaa !4
  %2140 = add i64 %2138, %2139
  store i64 %2140, i64* %60, align 16, !tbaa !4
  %2141 = getelementptr inbounds %class.BitStreamScanner* %match_scanner.i, i64 0, i32 0, i32 0, i64 %indvars.iv137.i
  store <2 x i64> %2121, <2 x i64>* %2141, align 16, !tbaa !1
  %2142 = bitcast <2 x i64> %2121 to <4 x i32>
  %2143 = icmp eq <4 x i32> %2142, zeroinitializer
  %2144 = sext <4 x i1> %2143 to <4 x i32>
  %2145 = bitcast <4 x i32> %2144 to <2 x i64>
  %2146 = call <2 x i64> @llvm_x86_sse2_psrli_q(<2 x i64> %2145, i32 32) #2
  %2147 = and <2 x i64> %2145, %2146
  %2148 = call <2 x i64> @llvm_x86_sse2_pslli_q(<2 x i64> %2147, i32 32) #2
  %2149 = or <2 x i64> %2147, %2148
  %2150 = xor <2 x i64> %2149, <i64 -1, i64 -1>
  %2151 = bitcast <2 x i64> %2150 to <2 x double>
  %2152 = call i32 @llvm_x86_sse2_movmsk_pd(<2 x double> %2151) #2
  %2153 = zext i32 %2152 to i64
  %2154 = and i64 %2153, 255
  %2155 = shl i64 %2154, %2137
  %2156 = load i64* %61, align 16, !tbaa !4
  %2157 = add i64 %2155, %2156
  store i64 %2157, i64* %61, align 16, !tbaa !4
  %2158 = bitcast <2 x i64> %2121 to <16 x i8>
  %2159 = icmp eq <16 x i8> %2158, zeroinitializer
  %2160 = sext <16 x i1> %2159 to <16 x i8>
  %2161 = call i32 @llvm_x86_sse2_pmovmskb_128(<16 x i8> %2160) #2
  %2162 = trunc i32 %2161 to i16
  %2163 = icmp eq i16 %2162, -1
  br i1 %2163, label %2208, label %2164

; <label>:2164                                    ; preds = %2120
  %2165 = and <2 x i64> %match_vector.358.i, %2121
  %2166 = bitcast <2 x i64> %2165 to <16 x i8>
  %2167 = icmp eq <16 x i8> %2166, zeroinitializer
  %2168 = sext <16 x i1> %2167 to <16 x i8>
  %2169 = call i32 @llvm_x86_sse2_pmovmskb_128(<16 x i8> %2168) #2
  %2170 = trunc i32 %2169 to i16
  %2171 = icmp eq i16 %2170, -1
  br i1 %2171, label %2206, label %2172

; <label>:2172                                    ; preds = %2164
  %2173 = bitcast <2 x i64> %match_vector.358.i to <8 x i16>
  %2174 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %2173, i32 1) #2
  %2175 = bitcast <8 x i16> %2174 to <2 x i64>
  %2176 = and <2 x i64> %2175, <i64 6148914691236517205, i64 6148914691236517205>
  %2177 = bitcast <2 x i64> %2176 to <8 x i16>
  %2178 = sub <8 x i16> %2173, %2177
  %2179 = bitcast <8 x i16> %2178 to <2 x i64>
  %2180 = bitcast <8 x i16> %2178 to <4 x i32>
  %2181 = call <4 x i32> @llvm_x86_sse2_psrli_d(<4 x i32> %2180, i32 2) #2
  %2182 = bitcast <4 x i32> %2181 to <2 x i64>
  %2183 = and <2 x i64> %2182, <i64 3689348814741910323, i64 3689348814741910323>
  %2184 = and <2 x i64> %2179, <i64 3689348814741910323, i64 3689348814741910323>
  %2185 = bitcast <2 x i64> %2183 to <16 x i8>
  %2186 = bitcast <2 x i64> %2184 to <16 x i8>
  %2187 = add <16 x i8> %2185, %2186
  %2188 = bitcast <16 x i8> %2187 to <2 x i64>
  %2189 = bitcast <16 x i8> %2187 to <4 x i32>
  %2190 = call <4 x i32> @llvm_x86_sse2_psrli_d(<4 x i32> %2189, i32 4) #2
  %2191 = bitcast <4 x i32> %2190 to <2 x i64>
  %2192 = and <2 x i64> %2191, <i64 1085102592571150095, i64 1085102592571150095>
  %2193 = and <2 x i64> %2188, <i64 1085102592571150095, i64 1085102592571150095>
  %2194 = bitcast <2 x i64> %2192 to <8 x i16>
  %2195 = bitcast <2 x i64> %2193 to <8 x i16>
  %2196 = add <8 x i16> %2194, %2195
  %2197 = bitcast <8 x i16> %2196 to <16 x i8>
  %2198 = call <2 x i64> @llvm_x86_sse2_psad_bw(<16 x i8> %2197, <16 x i8> zeroinitializer) #2
  %2199 = and <2 x i64> %2198, <i64 -1, i64 0>
  %2200 = call <2 x i64> @llvm_x86_sse2_psrl_dq(<2 x i64> %2198, i32 64) #2
  %2201 = add <2 x i64> %2199, %2200
  %2202 = bitcast <2 x i64> %2201 to <8 x i16>
  %2203 = extractelement <8 x i16> %2202, i32 0
  %2204 = zext i16 %2203 to i32
  %2205 = add nsw i32 %2204, %match_count.357.i
  br label %2208

; <label>:2206                                    ; preds = %2164
  %2207 = or <2 x i64> %match_vector.358.i, %2121
  br label %2208

; <label>:2208                                    ; preds = %2206, %2172, %2120
  %match_count.4.i = phi i32 [ %2205, %2172 ], [ %match_count.357.i, %2120 ], [ %match_count.357.i, %2206 ]
  %match_vector.4.i = phi <2 x i64> [ %2121, %2172 ], [ %match_vector.358.i, %2120 ], [ %2207, %2206 ]
  %indvars.iv.next140.i = add i64 %indvars.iv139.i, 128
  %2209 = add nsw i32 %remaining.059.i, -128
  %indvars.iv.next138.i = add i64 %indvars.iv137.i, 1
  %2210 = icmp sgt i32 %2209, 127
  br i1 %2210, label %.lr.ph60..lr.ph60.split_crit_edge.i, label %._crit_edge61.i

._crit_edge61.i:                                  ; preds = %2208, %992
  %split63.i = phi <2 x i64> [ %match_vector.0.lcssa.i, %992 ], [ %match_vector.4.i, %2208 ]
  %split64.i = phi i32 [ %match_count.0.lcssa.i, %992 ], [ %match_count.4.i, %2208 ]
  %split67.i = phi <2 x i64> [ %914, %992 ], [ %2042, %2208 ]
  %split68.i = phi <2 x i64> [ %930, %992 ], [ %2058, %2208 ]
  %split69.i = phi <2 x i64> [ %937, %992 ], [ %2065, %2208 ]
  %split70.i = phi <2 x i64> [ %944, %992 ], [ %2072, %2208 ]
  %split71.i = phi <2 x i64> [ %960, %992 ], [ %2088, %2208 ]
  %split72.i = phi <2 x i64> [ %994, %992 ], [ %2122, %2208 ]
  %split66.i = add i32 %552, 128
  %split65.i = add i32 %551, 1
  %phitmp.i = sext i32 %split66.i to i64
  br label %2211

; <label>:2211                                    ; preds = %._crit_edge61.i, %.preheader49.i
  %remaining.0.lcssa.i = phi i32 [ %553, %._crit_edge61.i ], [ %chars_avail.0.lcssa.i, %.preheader49.i ]
  %match_vector.3.lcssa.i = phi <2 x i64> [ %split63.i, %._crit_edge61.i ], [ %match_vector.0.lcssa.i, %.preheader49.i ]
  %match_count.3.lcssa.i = phi i32 [ %split64.i, %._crit_edge61.i ], [ %match_count.0.lcssa.i, %.preheader49.i ]
  %blk.1.lcssa.i = phi i32 [ %split65.i, %._crit_edge61.i ], [ 0, %.preheader49.i ]
  %block_pos.0.lcssa.i = phi i64 [ %phitmp.i, %._crit_edge61.i ], [ 0, %.preheader49.i ]
  %.lcssa54.i = phi <2 x i64> [ %split67.i, %._crit_edge61.i ], [ %.lcssa105.i, %.preheader49.i ]
  %.lcssa53.i = phi <2 x i64> [ %split68.i, %._crit_edge61.i ], [ %.lcssa104.i, %.preheader49.i ]
  %.lcssa52.i = phi <2 x i64> [ %split69.i, %._crit_edge61.i ], [ %.lcssa103.i, %.preheader49.i ]
  %.lcssa51.i = phi <2 x i64> [ %split70.i, %._crit_edge61.i ], [ %.lcssa102.i, %.preheader49.i ]
  %.lcssa50.i = phi <2 x i64> [ %split71.i, %._crit_edge61.i ], [ %.lcssa101.i, %.preheader49.i ]
  %.lcssa.i = phi <2 x i64> [ %split72.i, %._crit_edge61.i ], [ %.lcssa100.i, %.preheader49.i ]
  %2212 = sub nsw i32 128, %remaining.0.lcssa.i
  %2213 = sext i32 %2212 to i64
  %2214 = insertelement <2 x i64> <i64 undef, i64 0>, i64 %2213, i32 0
  %2215 = and <2 x i64> %2214, <i64 4294967295, i64 0>
  %2216 = call <2 x i64> @llvm_x86_sse2_psrl_q(<2 x i64> <i64 -1, i64 -1>, <2 x i64> %2215) #2
  %2217 = bitcast <2 x i64> %2215 to <4 x i32>
  %2218 = add <4 x i32> %2217, <i32 -64, i32 0, i32 0, i32 0>
  %2219 = bitcast <4 x i32> %2218 to <2 x i64>
  %2220 = call <2 x i64> @llvm_x86_sse2_psrl_q(<2 x i64> <i64 -1, i64 -1>, <2 x i64> %2219) #2
  %2221 = call <2 x i64> @llvm_x86_sse2_psrl_dq(<2 x i64> %2220, i32 64) #2
  %2222 = sub <4 x i32> <i32 64, i32 0, i32 0, i32 0>, %2217
  %2223 = bitcast <4 x i32> %2222 to <2 x i64>
  %2224 = call <2 x i64> @llvm_x86_sse2_psll_q(<2 x i64> <i64 -1, i64 -1>, <2 x i64> %2223) #2
  %2225 = call <2 x i64> @llvm_x86_sse2_psrl_dq(<2 x i64> %2224, i32 64) #2
  %2226 = or <2 x i64> %2221, %2225
  %2227 = or <2 x i64> %2216, %2226
  store <2 x i64> %2227, <2 x i64>* @EOF_mask, align 16, !tbaa !1
  %2228 = getelementptr inbounds [1920 x i8]* %src_buffer.i, i64 0, i64 %block_pos.0.lcssa.i
  %2229 = bitcast i8* %2228 to <2 x i64>*
  %.sum13.i = or i64 %block_pos.0.lcssa.i, 112
  %2230 = getelementptr inbounds [1920 x i8]* %src_buffer.i, i64 0, i64 %.sum13.i
  %2231 = bitcast i8* %2230 to <2 x i64>*
  %2232 = load <2 x i64>* %2231, align 16, !tbaa !1
  %.sum14.i = or i64 %block_pos.0.lcssa.i, 96
  %2233 = getelementptr inbounds [1920 x i8]* %src_buffer.i, i64 0, i64 %.sum14.i
  %2234 = bitcast i8* %2233 to <2 x i64>*
  %2235 = load <2 x i64>* %2234, align 16, !tbaa !1
  %2236 = bitcast <2 x i64> %2232 to <8 x i16>
  %2237 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %2236, i32 8) #2
  %2238 = bitcast <2 x i64> %2235 to <8 x i16>
  %2239 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %2238, i32 8) #2
  %2240 = call <16 x i8> @llvm_x86_sse2_packuswb_128(<8 x i16> %2239, <8 x i16> %2237) #2
  %2241 = bitcast <16 x i8> %2240 to <2 x i64>
  %2242 = and <2 x i64> %2232, <i64 71777214294589695, i64 71777214294589695>
  %2243 = and <2 x i64> %2235, <i64 71777214294589695, i64 71777214294589695>
  %2244 = bitcast <2 x i64> %2243 to <8 x i16>
  %2245 = bitcast <2 x i64> %2242 to <8 x i16>
  %2246 = call <16 x i8> @llvm_x86_sse2_packuswb_128(<8 x i16> %2244, <8 x i16> %2245) #2
  %2247 = bitcast <16 x i8> %2246 to <2 x i64>
  %2248 = bitcast <16 x i8> %2246 to <8 x i16>
  %2249 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %2248, i32 1) #2
  %2250 = bitcast <8 x i16> %2249 to <2 x i64>
  %2251 = and <2 x i64> %2241, <i64 -6148914691236517206, i64 -6148914691236517206>
  %2252 = and <2 x i64> %2250, <i64 6148914691236517205, i64 6148914691236517205>
  %2253 = or <2 x i64> %2251, %2252
  %2254 = bitcast <16 x i8> %2240 to <8 x i16>
  %2255 = call <8 x i16> @llvm_x86_sse2_pslli_w(<8 x i16> %2254, i32 1) #2
  %2256 = bitcast <8 x i16> %2255 to <2 x i64>
  %2257 = and <2 x i64> %2256, <i64 -6148914691236517206, i64 -6148914691236517206>
  %2258 = and <2 x i64> %2247, <i64 6148914691236517205, i64 6148914691236517205>
  %2259 = or <2 x i64> %2257, %2258
  %.sum15.i = or i64 %block_pos.0.lcssa.i, 80
  %2260 = getelementptr inbounds [1920 x i8]* %src_buffer.i, i64 0, i64 %.sum15.i
  %2261 = bitcast i8* %2260 to <2 x i64>*
  %2262 = load <2 x i64>* %2261, align 16, !tbaa !1
  %.sum16.i = or i64 %block_pos.0.lcssa.i, 64
  %2263 = getelementptr inbounds [1920 x i8]* %src_buffer.i, i64 0, i64 %.sum16.i
  %2264 = bitcast i8* %2263 to <2 x i64>*
  %2265 = load <2 x i64>* %2264, align 16, !tbaa !1
  %2266 = bitcast <2 x i64> %2262 to <8 x i16>
  %2267 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %2266, i32 8) #2
  %2268 = bitcast <2 x i64> %2265 to <8 x i16>
  %2269 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %2268, i32 8) #2
  %2270 = call <16 x i8> @llvm_x86_sse2_packuswb_128(<8 x i16> %2269, <8 x i16> %2267) #2
  %2271 = bitcast <16 x i8> %2270 to <2 x i64>
  %2272 = and <2 x i64> %2262, <i64 71777214294589695, i64 71777214294589695>
  %2273 = and <2 x i64> %2265, <i64 71777214294589695, i64 71777214294589695>
  %2274 = bitcast <2 x i64> %2273 to <8 x i16>
  %2275 = bitcast <2 x i64> %2272 to <8 x i16>
  %2276 = call <16 x i8> @llvm_x86_sse2_packuswb_128(<8 x i16> %2274, <8 x i16> %2275) #2
  %2277 = bitcast <16 x i8> %2276 to <2 x i64>
  %2278 = bitcast <16 x i8> %2276 to <8 x i16>
  %2279 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %2278, i32 1) #2
  %2280 = bitcast <8 x i16> %2279 to <2 x i64>
  %2281 = and <2 x i64> %2271, <i64 -6148914691236517206, i64 -6148914691236517206>
  %2282 = and <2 x i64> %2280, <i64 6148914691236517205, i64 6148914691236517205>
  %2283 = or <2 x i64> %2281, %2282
  %2284 = bitcast <16 x i8> %2270 to <8 x i16>
  %2285 = call <8 x i16> @llvm_x86_sse2_pslli_w(<8 x i16> %2284, i32 1) #2
  %2286 = bitcast <8 x i16> %2285 to <2 x i64>
  %2287 = and <2 x i64> %2286, <i64 -6148914691236517206, i64 -6148914691236517206>
  %2288 = and <2 x i64> %2277, <i64 6148914691236517205, i64 6148914691236517205>
  %2289 = or <2 x i64> %2287, %2288
  %.sum17.i = or i64 %block_pos.0.lcssa.i, 48
  %2290 = getelementptr inbounds [1920 x i8]* %src_buffer.i, i64 0, i64 %.sum17.i
  %2291 = bitcast i8* %2290 to <2 x i64>*
  %2292 = load <2 x i64>* %2291, align 16, !tbaa !1
  %.sum18.i = or i64 %block_pos.0.lcssa.i, 32
  %2293 = getelementptr inbounds [1920 x i8]* %src_buffer.i, i64 0, i64 %.sum18.i
  %2294 = bitcast i8* %2293 to <2 x i64>*
  %2295 = load <2 x i64>* %2294, align 16, !tbaa !1
  %2296 = bitcast <2 x i64> %2292 to <8 x i16>
  %2297 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %2296, i32 8) #2
  %2298 = bitcast <2 x i64> %2295 to <8 x i16>
  %2299 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %2298, i32 8) #2
  %2300 = call <16 x i8> @llvm_x86_sse2_packuswb_128(<8 x i16> %2299, <8 x i16> %2297) #2
  %2301 = bitcast <16 x i8> %2300 to <2 x i64>
  %2302 = and <2 x i64> %2292, <i64 71777214294589695, i64 71777214294589695>
  %2303 = and <2 x i64> %2295, <i64 71777214294589695, i64 71777214294589695>
  %2304 = bitcast <2 x i64> %2303 to <8 x i16>
  %2305 = bitcast <2 x i64> %2302 to <8 x i16>
  %2306 = call <16 x i8> @llvm_x86_sse2_packuswb_128(<8 x i16> %2304, <8 x i16> %2305) #2
  %2307 = bitcast <16 x i8> %2306 to <2 x i64>
  %2308 = bitcast <16 x i8> %2306 to <8 x i16>
  %2309 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %2308, i32 1) #2
  %2310 = bitcast <8 x i16> %2309 to <2 x i64>
  %2311 = and <2 x i64> %2301, <i64 -6148914691236517206, i64 -6148914691236517206>
  %2312 = and <2 x i64> %2310, <i64 6148914691236517205, i64 6148914691236517205>
  %2313 = or <2 x i64> %2311, %2312
  %2314 = bitcast <16 x i8> %2300 to <8 x i16>
  %2315 = call <8 x i16> @llvm_x86_sse2_pslli_w(<8 x i16> %2314, i32 1) #2
  %2316 = bitcast <8 x i16> %2315 to <2 x i64>
  %2317 = and <2 x i64> %2316, <i64 -6148914691236517206, i64 -6148914691236517206>
  %2318 = and <2 x i64> %2307, <i64 6148914691236517205, i64 6148914691236517205>
  %2319 = or <2 x i64> %2317, %2318
  %.sum19.i = or i64 %block_pos.0.lcssa.i, 16
  %2320 = getelementptr inbounds [1920 x i8]* %src_buffer.i, i64 0, i64 %.sum19.i
  %2321 = bitcast i8* %2320 to <2 x i64>*
  %2322 = load <2 x i64>* %2321, align 16, !tbaa !1
  %2323 = load <2 x i64>* %2229, align 16, !tbaa !1
  %2324 = bitcast <2 x i64> %2322 to <8 x i16>
  %2325 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %2324, i32 8) #2
  %2326 = bitcast <2 x i64> %2323 to <8 x i16>
  %2327 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %2326, i32 8) #2
  %2328 = call <16 x i8> @llvm_x86_sse2_packuswb_128(<8 x i16> %2327, <8 x i16> %2325) #2
  %2329 = bitcast <16 x i8> %2328 to <2 x i64>
  %2330 = and <2 x i64> %2322, <i64 71777214294589695, i64 71777214294589695>
  %2331 = and <2 x i64> %2323, <i64 71777214294589695, i64 71777214294589695>
  %2332 = bitcast <2 x i64> %2331 to <8 x i16>
  %2333 = bitcast <2 x i64> %2330 to <8 x i16>
  %2334 = call <16 x i8> @llvm_x86_sse2_packuswb_128(<8 x i16> %2332, <8 x i16> %2333) #2
  %2335 = bitcast <16 x i8> %2334 to <2 x i64>
  %2336 = bitcast <16 x i8> %2334 to <8 x i16>
  %2337 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %2336, i32 1) #2
  %2338 = bitcast <8 x i16> %2337 to <2 x i64>
  %2339 = and <2 x i64> %2329, <i64 -6148914691236517206, i64 -6148914691236517206>
  %2340 = and <2 x i64> %2338, <i64 6148914691236517205, i64 6148914691236517205>
  %2341 = or <2 x i64> %2339, %2340
  %2342 = bitcast <16 x i8> %2328 to <8 x i16>
  %2343 = call <8 x i16> @llvm_x86_sse2_pslli_w(<8 x i16> %2342, i32 1) #2
  %2344 = bitcast <8 x i16> %2343 to <2 x i64>
  %2345 = and <2 x i64> %2344, <i64 -6148914691236517206, i64 -6148914691236517206>
  %2346 = and <2 x i64> %2335, <i64 6148914691236517205, i64 6148914691236517205>
  %2347 = or <2 x i64> %2345, %2346
  %2348 = bitcast <2 x i64> %2253 to <8 x i16>
  %2349 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %2348, i32 8) #2
  %2350 = bitcast <2 x i64> %2283 to <8 x i16>
  %2351 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %2350, i32 8) #2
  %2352 = call <16 x i8> @llvm_x86_sse2_packuswb_128(<8 x i16> %2351, <8 x i16> %2349) #2
  %2353 = bitcast <16 x i8> %2352 to <2 x i64>
  %2354 = and <2 x i64> %2253, <i64 71777214294589695, i64 71777214294589695>
  %2355 = and <2 x i64> %2283, <i64 71777214294589695, i64 71777214294589695>
  %2356 = bitcast <2 x i64> %2355 to <8 x i16>
  %2357 = bitcast <2 x i64> %2354 to <8 x i16>
  %2358 = call <16 x i8> @llvm_x86_sse2_packuswb_128(<8 x i16> %2356, <8 x i16> %2357) #2
  %2359 = bitcast <16 x i8> %2358 to <2 x i64>
  %2360 = bitcast <16 x i8> %2358 to <8 x i16>
  %2361 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %2360, i32 2) #2
  %2362 = bitcast <8 x i16> %2361 to <2 x i64>
  %2363 = and <2 x i64> %2353, <i64 -3689348814741910324, i64 -3689348814741910324>
  %2364 = and <2 x i64> %2362, <i64 3689348814741910323, i64 3689348814741910323>
  %2365 = or <2 x i64> %2363, %2364
  %2366 = bitcast <16 x i8> %2352 to <8 x i16>
  %2367 = call <8 x i16> @llvm_x86_sse2_pslli_w(<8 x i16> %2366, i32 2) #2
  %2368 = bitcast <8 x i16> %2367 to <2 x i64>
  %2369 = and <2 x i64> %2368, <i64 -3689348814741910324, i64 -3689348814741910324>
  %2370 = and <2 x i64> %2359, <i64 3689348814741910323, i64 3689348814741910323>
  %2371 = or <2 x i64> %2369, %2370
  %2372 = bitcast <2 x i64> %2313 to <8 x i16>
  %2373 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %2372, i32 8) #2
  %2374 = bitcast <2 x i64> %2341 to <8 x i16>
  %2375 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %2374, i32 8) #2
  %2376 = call <16 x i8> @llvm_x86_sse2_packuswb_128(<8 x i16> %2375, <8 x i16> %2373) #2
  %2377 = bitcast <16 x i8> %2376 to <2 x i64>
  %2378 = and <2 x i64> %2313, <i64 71777214294589695, i64 71777214294589695>
  %2379 = and <2 x i64> %2341, <i64 71777214294589695, i64 71777214294589695>
  %2380 = bitcast <2 x i64> %2379 to <8 x i16>
  %2381 = bitcast <2 x i64> %2378 to <8 x i16>
  %2382 = call <16 x i8> @llvm_x86_sse2_packuswb_128(<8 x i16> %2380, <8 x i16> %2381) #2
  %2383 = bitcast <16 x i8> %2382 to <2 x i64>
  %2384 = bitcast <16 x i8> %2382 to <8 x i16>
  %2385 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %2384, i32 2) #2
  %2386 = bitcast <8 x i16> %2385 to <2 x i64>
  %2387 = and <2 x i64> %2377, <i64 -3689348814741910324, i64 -3689348814741910324>
  %2388 = and <2 x i64> %2386, <i64 3689348814741910323, i64 3689348814741910323>
  %2389 = or <2 x i64> %2387, %2388
  %2390 = bitcast <16 x i8> %2376 to <8 x i16>
  %2391 = call <8 x i16> @llvm_x86_sse2_pslli_w(<8 x i16> %2390, i32 2) #2
  %2392 = bitcast <8 x i16> %2391 to <2 x i64>
  %2393 = and <2 x i64> %2392, <i64 -3689348814741910324, i64 -3689348814741910324>
  %2394 = and <2 x i64> %2383, <i64 3689348814741910323, i64 3689348814741910323>
  %2395 = or <2 x i64> %2393, %2394
  %2396 = bitcast <2 x i64> %2259 to <8 x i16>
  %2397 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %2396, i32 8) #2
  %2398 = bitcast <2 x i64> %2289 to <8 x i16>
  %2399 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %2398, i32 8) #2
  %2400 = call <16 x i8> @llvm_x86_sse2_packuswb_128(<8 x i16> %2399, <8 x i16> %2397) #2
  %2401 = bitcast <16 x i8> %2400 to <2 x i64>
  %2402 = and <2 x i64> %2259, <i64 71777214294589695, i64 71777214294589695>
  %2403 = and <2 x i64> %2289, <i64 71777214294589695, i64 71777214294589695>
  %2404 = bitcast <2 x i64> %2403 to <8 x i16>
  %2405 = bitcast <2 x i64> %2402 to <8 x i16>
  %2406 = call <16 x i8> @llvm_x86_sse2_packuswb_128(<8 x i16> %2404, <8 x i16> %2405) #2
  %2407 = bitcast <16 x i8> %2406 to <2 x i64>
  %2408 = bitcast <16 x i8> %2406 to <8 x i16>
  %2409 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %2408, i32 2) #2
  %2410 = bitcast <8 x i16> %2409 to <2 x i64>
  %2411 = and <2 x i64> %2401, <i64 -3689348814741910324, i64 -3689348814741910324>
  %2412 = and <2 x i64> %2410, <i64 3689348814741910323, i64 3689348814741910323>
  %2413 = or <2 x i64> %2411, %2412
  %2414 = bitcast <16 x i8> %2400 to <8 x i16>
  %2415 = call <8 x i16> @llvm_x86_sse2_pslli_w(<8 x i16> %2414, i32 2) #2
  %2416 = bitcast <8 x i16> %2415 to <2 x i64>
  %2417 = and <2 x i64> %2416, <i64 -3689348814741910324, i64 -3689348814741910324>
  %2418 = and <2 x i64> %2407, <i64 3689348814741910323, i64 3689348814741910323>
  %2419 = or <2 x i64> %2417, %2418
  %2420 = bitcast <2 x i64> %2319 to <8 x i16>
  %2421 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %2420, i32 8) #2
  %2422 = bitcast <2 x i64> %2347 to <8 x i16>
  %2423 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %2422, i32 8) #2
  %2424 = call <16 x i8> @llvm_x86_sse2_packuswb_128(<8 x i16> %2423, <8 x i16> %2421) #2
  %2425 = bitcast <16 x i8> %2424 to <2 x i64>
  %2426 = and <2 x i64> %2319, <i64 71777214294589695, i64 71777214294589695>
  %2427 = and <2 x i64> %2347, <i64 71777214294589695, i64 71777214294589695>
  %2428 = bitcast <2 x i64> %2427 to <8 x i16>
  %2429 = bitcast <2 x i64> %2426 to <8 x i16>
  %2430 = call <16 x i8> @llvm_x86_sse2_packuswb_128(<8 x i16> %2428, <8 x i16> %2429) #2
  %2431 = bitcast <16 x i8> %2430 to <2 x i64>
  %2432 = bitcast <16 x i8> %2430 to <8 x i16>
  %2433 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %2432, i32 2) #2
  %2434 = bitcast <8 x i16> %2433 to <2 x i64>
  %2435 = and <2 x i64> %2425, <i64 -3689348814741910324, i64 -3689348814741910324>
  %2436 = and <2 x i64> %2434, <i64 3689348814741910323, i64 3689348814741910323>
  %2437 = or <2 x i64> %2435, %2436
  %2438 = bitcast <16 x i8> %2424 to <8 x i16>
  %2439 = call <8 x i16> @llvm_x86_sse2_pslli_w(<8 x i16> %2438, i32 2) #2
  %2440 = bitcast <8 x i16> %2439 to <2 x i64>
  %2441 = and <2 x i64> %2440, <i64 -3689348814741910324, i64 -3689348814741910324>
  %2442 = and <2 x i64> %2431, <i64 3689348814741910323, i64 3689348814741910323>
  %2443 = or <2 x i64> %2441, %2442
  %2444 = bitcast <2 x i64> %2365 to <8 x i16>
  %2445 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %2444, i32 8) #2
  %2446 = bitcast <2 x i64> %2389 to <8 x i16>
  %2447 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %2446, i32 8) #2
  %2448 = call <16 x i8> @llvm_x86_sse2_packuswb_128(<8 x i16> %2447, <8 x i16> %2445) #2
  %2449 = bitcast <16 x i8> %2448 to <2 x i64>
  %2450 = and <2 x i64> %2365, <i64 71777214294589695, i64 71777214294589695>
  %2451 = and <2 x i64> %2389, <i64 71777214294589695, i64 71777214294589695>
  %2452 = bitcast <2 x i64> %2451 to <8 x i16>
  %2453 = bitcast <2 x i64> %2450 to <8 x i16>
  %2454 = call <16 x i8> @llvm_x86_sse2_packuswb_128(<8 x i16> %2452, <8 x i16> %2453) #2
  %2455 = bitcast <16 x i8> %2454 to <2 x i64>
  %2456 = bitcast <16 x i8> %2454 to <8 x i16>
  %2457 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %2456, i32 4) #2
  %2458 = bitcast <8 x i16> %2457 to <2 x i64>
  %2459 = and <2 x i64> %2449, <i64 -1085102592571150096, i64 -1085102592571150096>
  %2460 = and <2 x i64> %2458, <i64 1085102592571150095, i64 1085102592571150095>
  %2461 = or <2 x i64> %2459, %2460
  %2462 = bitcast <16 x i8> %2448 to <8 x i16>
  %2463 = call <8 x i16> @llvm_x86_sse2_pslli_w(<8 x i16> %2462, i32 4) #2
  %2464 = bitcast <8 x i16> %2463 to <2 x i64>
  %2465 = and <2 x i64> %2464, <i64 -1085102592571150096, i64 -1085102592571150096>
  %2466 = and <2 x i64> %2455, <i64 1085102592571150095, i64 1085102592571150095>
  %2467 = or <2 x i64> %2465, %2466
  %2468 = bitcast <2 x i64> %2413 to <8 x i16>
  %2469 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %2468, i32 8) #2
  %2470 = bitcast <2 x i64> %2437 to <8 x i16>
  %2471 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %2470, i32 8) #2
  %2472 = call <16 x i8> @llvm_x86_sse2_packuswb_128(<8 x i16> %2471, <8 x i16> %2469) #2
  %2473 = bitcast <16 x i8> %2472 to <2 x i64>
  %2474 = and <2 x i64> %2413, <i64 71777214294589695, i64 71777214294589695>
  %2475 = and <2 x i64> %2437, <i64 71777214294589695, i64 71777214294589695>
  %2476 = bitcast <2 x i64> %2475 to <8 x i16>
  %2477 = bitcast <2 x i64> %2474 to <8 x i16>
  %2478 = call <16 x i8> @llvm_x86_sse2_packuswb_128(<8 x i16> %2476, <8 x i16> %2477) #2
  %2479 = bitcast <16 x i8> %2478 to <2 x i64>
  %2480 = bitcast <16 x i8> %2478 to <8 x i16>
  %2481 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %2480, i32 4) #2
  %2482 = bitcast <8 x i16> %2481 to <2 x i64>
  %2483 = and <2 x i64> %2473, <i64 -1085102592571150096, i64 -1085102592571150096>
  %2484 = and <2 x i64> %2482, <i64 1085102592571150095, i64 1085102592571150095>
  %2485 = or <2 x i64> %2483, %2484
  %2486 = bitcast <16 x i8> %2472 to <8 x i16>
  %2487 = call <8 x i16> @llvm_x86_sse2_pslli_w(<8 x i16> %2486, i32 4) #2
  %2488 = bitcast <8 x i16> %2487 to <2 x i64>
  %2489 = and <2 x i64> %2488, <i64 -1085102592571150096, i64 -1085102592571150096>
  %2490 = and <2 x i64> %2479, <i64 1085102592571150095, i64 1085102592571150095>
  %2491 = or <2 x i64> %2489, %2490
  %2492 = bitcast <2 x i64> %2371 to <8 x i16>
  %2493 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %2492, i32 8) #2
  %2494 = bitcast <2 x i64> %2395 to <8 x i16>
  %2495 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %2494, i32 8) #2
  %2496 = call <16 x i8> @llvm_x86_sse2_packuswb_128(<8 x i16> %2495, <8 x i16> %2493) #2
  %2497 = bitcast <16 x i8> %2496 to <2 x i64>
  %2498 = and <2 x i64> %2371, <i64 71777214294589695, i64 71777214294589695>
  %2499 = and <2 x i64> %2395, <i64 71777214294589695, i64 71777214294589695>
  %2500 = bitcast <2 x i64> %2499 to <8 x i16>
  %2501 = bitcast <2 x i64> %2498 to <8 x i16>
  %2502 = call <16 x i8> @llvm_x86_sse2_packuswb_128(<8 x i16> %2500, <8 x i16> %2501) #2
  %2503 = bitcast <16 x i8> %2502 to <2 x i64>
  %2504 = bitcast <16 x i8> %2502 to <8 x i16>
  %2505 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %2504, i32 4) #2
  %2506 = bitcast <8 x i16> %2505 to <2 x i64>
  %2507 = and <2 x i64> %2497, <i64 -1085102592571150096, i64 -1085102592571150096>
  %2508 = and <2 x i64> %2506, <i64 1085102592571150095, i64 1085102592571150095>
  %2509 = or <2 x i64> %2507, %2508
  %2510 = bitcast <16 x i8> %2496 to <8 x i16>
  %2511 = call <8 x i16> @llvm_x86_sse2_pslli_w(<8 x i16> %2510, i32 4) #2
  %2512 = bitcast <8 x i16> %2511 to <2 x i64>
  %2513 = and <2 x i64> %2512, <i64 -1085102592571150096, i64 -1085102592571150096>
  %2514 = and <2 x i64> %2503, <i64 1085102592571150095, i64 1085102592571150095>
  %2515 = or <2 x i64> %2513, %2514
  %2516 = bitcast <2 x i64> %2419 to <8 x i16>
  %2517 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %2516, i32 8) #2
  %2518 = bitcast <2 x i64> %2443 to <8 x i16>
  %2519 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %2518, i32 8) #2
  %2520 = call <16 x i8> @llvm_x86_sse2_packuswb_128(<8 x i16> %2519, <8 x i16> %2517) #2
  %2521 = bitcast <16 x i8> %2520 to <2 x i64>
  %2522 = and <2 x i64> %2419, <i64 71777214294589695, i64 71777214294589695>
  %2523 = and <2 x i64> %2443, <i64 71777214294589695, i64 71777214294589695>
  %2524 = bitcast <2 x i64> %2523 to <8 x i16>
  %2525 = bitcast <2 x i64> %2522 to <8 x i16>
  %2526 = call <16 x i8> @llvm_x86_sse2_packuswb_128(<8 x i16> %2524, <8 x i16> %2525) #2
  %2527 = bitcast <16 x i8> %2526 to <2 x i64>
  %2528 = bitcast <16 x i8> %2526 to <8 x i16>
  %2529 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %2528, i32 4) #2
  %2530 = bitcast <8 x i16> %2529 to <2 x i64>
  %2531 = and <2 x i64> %2521, <i64 -1085102592571150096, i64 -1085102592571150096>
  %2532 = and <2 x i64> %2530, <i64 1085102592571150095, i64 1085102592571150095>
  %2533 = or <2 x i64> %2531, %2532
  %2534 = bitcast <16 x i8> %2520 to <8 x i16>
  %2535 = call <8 x i16> @llvm_x86_sse2_pslli_w(<8 x i16> %2534, i32 4) #2
  %2536 = bitcast <8 x i16> %2535 to <2 x i64>
  %2537 = and <2 x i64> %2536, <i64 -1085102592571150096, i64 -1085102592571150096>
  %2538 = and <2 x i64> %2527, <i64 1085102592571150095, i64 1085102592571150095>
  %2539 = or <2 x i64> %2537, %2538
  %2540 = and <2 x i64> %2461, %2227
  %2541 = and <2 x i64> %2485, %2227
  %2542 = and <2 x i64> %2509, %2227
  %2543 = and <2 x i64> %2533, %2227
  %2544 = and <2 x i64> %2467, %2227
  %2545 = and <2 x i64> %2491, %2227
  %2546 = and <2 x i64> %2515, %2227
  %2547 = and <2 x i64> %2539, %2227
  %2548 = or <2 x i64> %2540, %2541
  %2549 = or <2 x i64> %2542, %2543
  %2550 = or <2 x i64> %2548, %2549
  %2551 = or <2 x i64> %2545, %2546
  %2552 = and <2 x i64> %2467, %2551
  %2553 = or <2 x i64> %2550, %2552
  %2554 = or <2 x i64> %2548, %2542
  %2555 = and <2 x i64> %2515, %2547
  %2556 = or <2 x i64> %2545, %2555
  %2557 = and <2 x i64> %2467, %2556
  %2558 = or <2 x i64> %2543, %2557
  %.not.i.i = xor <2 x i64> %2558, <i64 -1, i64 -1>
  %2559 = or <2 x i64> %2554, %.not.i.i
  %2560 = and <2 x i64> %2559, %2553
  %2561 = xor <2 x i64> %2548, <i64 -1, i64 -1>
  %2562 = and <2 x i64> %2542, %2561
  %2563 = or <2 x i64> %2544, %2545
  %2564 = or <2 x i64> %2546, %2547
  %2565 = or <2 x i64> %2563, %2564
  %2566 = or <2 x i64> %2543, %2565
  %2567 = and <2 x i64> %2562, %2566
  %2568 = or <2 x i64> %2549, %2565
  %2569 = and <2 x i64> %2541, %2568
  %2570 = or <2 x i64> %2540, %2569
  %.not2.i.i = xor <2 x i64> %2560, <i64 -1, i64 -1>
  %.not1.i.i = or <2 x i64> %2567, %.not2.i.i
  %2571 = or <2 x i64> %2570, %.not1.i.i
  %2572 = xor <2 x i64> %2540, <i64 -1, i64 -1>
  %2573 = and <2 x i64> %2541, %2572
  %2574 = xor <2 x i64> %2549, <i64 -1, i64 -1>
  %2575 = and <2 x i64> %2573, %2574
  %2576 = xor <2 x i64> %2565, <i64 -1, i64 -1>
  %2577 = and <2 x i64> %2575, %2576
  %2578 = xor <2 x i64> %2545, <i64 -1, i64 -1>
  %2579 = and <2 x i64> %2544, %2578
  %2580 = xor <2 x i64> %2547, <i64 -1, i64 -1>
  %2581 = and <2 x i64> %2546, %2580
  %2582 = and <2 x i64> %2579, %2581
  %2583 = xor <2 x i64> %2550, <i64 -1, i64 -1>
  %2584 = and <2 x i64> %2582, %2583
  %2585 = call <2 x i64> @llvm_x86_sse2_psrli_q(<2 x i64> %2571, i32 63) #2
  %2586 = shufflevector <2 x i64> %.lcssa54.i, <2 x i64> %2585, <2 x i32> <i32 0, i32 2>
  %2587 = shl <2 x i64> %2571, <i64 1, i64 1>
  %2588 = or <2 x i64> %2587, %2586
  %2589 = and <2 x i64> %2571, %2588
  %2590 = add <2 x i64> %2589, %2571
  %2591 = add <2 x i64> %2590, %.lcssa53.i
  %2592 = xor <2 x i64> %2591, <i64 -1, i64 -1>
  %2593 = and <2 x i64> %2571, %2592
  %2594 = or <2 x i64> %2589, %2593
  %2595 = call <2 x i64> @llvm_x86_sse2_psrli_q(<2 x i64> %2594, i32 63) #2
  %2596 = call <2 x i64> @llvm_x86_sse2_psll_dq(<2 x i64> %2595, i32 64) #2
  %2597 = add <2 x i64> %2596, %2591
  %2598 = xor <2 x i64> %2597, %2571
  %2599 = or <2 x i64> %2598, %2588
  %2600 = and <2 x i64> %2599, %2577
  %2601 = call <2 x i64> @llvm_x86_sse2_psrli_q(<2 x i64> %2600, i32 63) #2
  %2602 = shufflevector <2 x i64> %.lcssa52.i, <2 x i64> %2601, <2 x i32> <i32 0, i32 2>
  %2603 = shl <2 x i64> %2600, <i64 1, i64 1>
  %2604 = or <2 x i64> %2603, %2602
  %2605 = and <2 x i64> %2604, %2571
  %2606 = call <2 x i64> @llvm_x86_sse2_psrli_q(<2 x i64> %2605, i32 63) #2
  %2607 = shufflevector <2 x i64> %.lcssa51.i, <2 x i64> %2606, <2 x i32> <i32 0, i32 2>
  %2608 = shl <2 x i64> %2605, <i64 1, i64 1>
  %2609 = or <2 x i64> %2608, %2607
  %2610 = and <2 x i64> %2571, %2609
  %2611 = add <2 x i64> %2610, %2571
  %2612 = add <2 x i64> %2611, %.lcssa50.i
  %2613 = xor <2 x i64> %2612, <i64 -1, i64 -1>
  %2614 = and <2 x i64> %2571, %2613
  %2615 = or <2 x i64> %2610, %2614
  %2616 = call <2 x i64> @llvm_x86_sse2_psrli_q(<2 x i64> %2615, i32 63) #2
  %2617 = call <2 x i64> @llvm_x86_sse2_psll_dq(<2 x i64> %2616, i32 64) #2
  %2618 = add <2 x i64> %2617, %2612
  %2619 = xor <2 x i64> %2618, %2571
  %2620 = or <2 x i64> %2619, %2609
  %2621 = bitcast <2 x i64> %2620 to <16 x i8>
  %2622 = icmp eq <16 x i8> %2621, zeroinitializer
  %2623 = sext <16 x i1> %2622 to <16 x i8>
  %2624 = call i32 @llvm_x86_sse2_pmovmskb_128(<16 x i8> %2623) #2
  %2625 = trunc i32 %2624 to i16
  %2626 = icmp eq i16 %2625, -1
  br i1 %2626, label %2627, label %._crit_edge.i.i

; <label>:2627                                    ; preds = %2211
  %2628 = bitcast <2 x i64> %.lcssa.i to <16 x i8>
  %2629 = icmp eq <16 x i8> %2628, zeroinitializer
  %2630 = sext <16 x i1> %2629 to <16 x i8>
  %2631 = call i32 @llvm_x86_sse2_pmovmskb_128(<16 x i8> %2630) #2
  %2632 = trunc i32 %2631 to i16
  %2633 = icmp eq i16 %2632, -1
  br i1 %2633, label %_ZN4Demo14do_final_blockER3LexR6OutputDv2_x.exit.i, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %2627, %2211
  %.not.i = xor <2 x i64> %2582, <i64 -1, i64 -1>
  %2634 = or <2 x i64> %2550, %.not.i
  %2635 = and <2 x i64> %2620, %2634
  %2636 = add <2 x i64> %2635, %2634
  %2637 = add <2 x i64> %2636, %.lcssa.i
  %2638 = xor <2 x i64> %2637, <i64 -1, i64 -1>
  %2639 = and <2 x i64> %2634, %2638
  %2640 = or <2 x i64> %2635, %2639
  %2641 = call <2 x i64> @llvm_x86_sse2_psrli_q(<2 x i64> %2640, i32 63) #2
  %2642 = call <2 x i64> @llvm_x86_sse2_psll_dq(<2 x i64> %2641, i32 64) #2
  %2643 = add <2 x i64> %2642, %2637
  %2644 = xor <2 x i64> %2643, %2634
  %2645 = or <2 x i64> %2644, %2620
  %2646 = and <2 x i64> %2645, %2584
  br label %_ZN4Demo14do_final_blockER3LexR6OutputDv2_x.exit.i

_ZN4Demo14do_final_blockER3LexR6OutputDv2_x.exit.i: ; preds = %._crit_edge.i.i, %2627
  %2647 = phi <2 x i64> [ zeroinitializer, %2627 ], [ %2646, %._crit_edge.i.i ]
  %2648 = icmp eq i32 %count_only_option.0.ph, 0
  br i1 %2648, label %2725, label %2649

; <label>:2649                                    ; preds = %_ZN4Demo14do_final_blockER3LexR6OutputDv2_x.exit.i
  %2650 = bitcast <2 x i64> %match_vector.3.lcssa.i to <8 x i16>
  %2651 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %2650, i32 1) #2
  %2652 = bitcast <8 x i16> %2651 to <2 x i64>
  %2653 = and <2 x i64> %2652, <i64 6148914691236517205, i64 6148914691236517205>
  %2654 = bitcast <2 x i64> %2653 to <8 x i16>
  %2655 = sub <8 x i16> %2650, %2654
  %2656 = bitcast <8 x i16> %2655 to <2 x i64>
  %2657 = bitcast <8 x i16> %2655 to <4 x i32>
  %2658 = call <4 x i32> @llvm_x86_sse2_psrli_d(<4 x i32> %2657, i32 2) #2
  %2659 = bitcast <4 x i32> %2658 to <2 x i64>
  %2660 = and <2 x i64> %2659, <i64 3689348814741910323, i64 3689348814741910323>
  %2661 = and <2 x i64> %2656, <i64 3689348814741910323, i64 3689348814741910323>
  %2662 = bitcast <2 x i64> %2660 to <16 x i8>
  %2663 = bitcast <2 x i64> %2661 to <16 x i8>
  %2664 = add <16 x i8> %2662, %2663
  %2665 = bitcast <16 x i8> %2664 to <2 x i64>
  %2666 = bitcast <16 x i8> %2664 to <4 x i32>
  %2667 = call <4 x i32> @llvm_x86_sse2_psrli_d(<4 x i32> %2666, i32 4) #2
  %2668 = bitcast <4 x i32> %2667 to <2 x i64>
  %2669 = and <2 x i64> %2668, <i64 1085102592571150095, i64 1085102592571150095>
  %2670 = and <2 x i64> %2665, <i64 1085102592571150095, i64 1085102592571150095>
  %2671 = bitcast <2 x i64> %2669 to <8 x i16>
  %2672 = bitcast <2 x i64> %2670 to <8 x i16>
  %2673 = add <8 x i16> %2671, %2672
  %2674 = bitcast <8 x i16> %2673 to <16 x i8>
  %2675 = call <2 x i64> @llvm_x86_sse2_psad_bw(<16 x i8> %2674, <16 x i8> zeroinitializer) #2
  %2676 = and <2 x i64> %2675, <i64 -1, i64 0>
  %2677 = call <2 x i64> @llvm_x86_sse2_psrl_dq(<2 x i64> %2675, i32 64) #2
  %2678 = add <2 x i64> %2676, %2677
  %2679 = bitcast <2 x i64> %2678 to <8 x i16>
  %2680 = extractelement <8 x i16> %2679, i32 0
  %2681 = zext i16 %2680 to i32
  %2682 = add nsw i32 %2681, %match_count.3.lcssa.i
  %2683 = bitcast <2 x i64> %2647 to <16 x i8>
  %2684 = icmp eq <16 x i8> %2683, zeroinitializer
  %2685 = sext <16 x i1> %2684 to <16 x i8>
  %2686 = call i32 @llvm_x86_sse2_pmovmskb_128(<16 x i8> %2685) #2
  %2687 = trunc i32 %2686 to i16
  %2688 = icmp eq i16 %2687, -1
  br i1 %2688, label %2723, label %2689

; <label>:2689                                    ; preds = %2649
  %2690 = bitcast <2 x i64> %2647 to <8 x i16>
  %2691 = call <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %2690, i32 1) #2
  %2692 = bitcast <8 x i16> %2691 to <2 x i64>
  %2693 = and <2 x i64> %2692, <i64 6148914691236517205, i64 6148914691236517205>
  %2694 = bitcast <2 x i64> %2693 to <8 x i16>
  %2695 = sub <8 x i16> %2690, %2694
  %2696 = bitcast <8 x i16> %2695 to <2 x i64>
  %2697 = bitcast <8 x i16> %2695 to <4 x i32>
  %2698 = call <4 x i32> @llvm_x86_sse2_psrli_d(<4 x i32> %2697, i32 2) #2
  %2699 = bitcast <4 x i32> %2698 to <2 x i64>
  %2700 = and <2 x i64> %2699, <i64 3689348814741910323, i64 3689348814741910323>
  %2701 = and <2 x i64> %2696, <i64 3689348814741910323, i64 3689348814741910323>
  %2702 = bitcast <2 x i64> %2700 to <16 x i8>
  %2703 = bitcast <2 x i64> %2701 to <16 x i8>
  %2704 = add <16 x i8> %2702, %2703
  %2705 = bitcast <16 x i8> %2704 to <2 x i64>
  %2706 = bitcast <16 x i8> %2704 to <4 x i32>
  %2707 = call <4 x i32> @llvm_x86_sse2_psrli_d(<4 x i32> %2706, i32 4) #2
  %2708 = bitcast <4 x i32> %2707 to <2 x i64>
  %2709 = and <2 x i64> %2708, <i64 1085102592571150095, i64 1085102592571150095>
  %2710 = and <2 x i64> %2705, <i64 1085102592571150095, i64 1085102592571150095>
  %2711 = bitcast <2 x i64> %2709 to <8 x i16>
  %2712 = bitcast <2 x i64> %2710 to <8 x i16>
  %2713 = add <8 x i16> %2711, %2712
  %2714 = bitcast <8 x i16> %2713 to <16 x i8>
  %2715 = call <2 x i64> @llvm_x86_sse2_psad_bw(<16 x i8> %2714, <16 x i8> zeroinitializer) #2
  %2716 = and <2 x i64> %2715, <i64 -1, i64 0>
  %2717 = call <2 x i64> @llvm_x86_sse2_psrl_dq(<2 x i64> %2715, i32 64) #2
  %2718 = add <2 x i64> %2716, %2717
  %2719 = bitcast <2 x i64> %2718 to <8 x i16>
  %2720 = extractelement <8 x i16> %2719, i32 0
  %2721 = zext i16 %2720 to i32
  %2722 = add nsw i32 %2721, %2682
  br label %2723

; <label>:2723                                    ; preds = %2689, %2649
  %match_count.5.i = phi i32 [ %2722, %2689 ], [ %2682, %2649 ]
  %2724 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %outfile.0, i8* getelementptr inbounds ([19 x i8]* @.str13, i64 0, i64 0), i32 %match_count.5.i) #2
  br label %_ZL10do_processP8_IO_FILES0_i.exit

; <label>:2725                                    ; preds = %_ZN4Demo14do_final_blockER3LexR6OutputDv2_x.exit.i
  %2726 = sext i32 %blk.1.lcssa.i to i64
  %2727 = getelementptr inbounds %class.BitStreamScanner* %LF_scanner.i, i64 0, i32 0, i32 0, i64 %2726
  store <2 x i64> %2584, <2 x i64>* %2727, align 16, !tbaa !1
  %2728 = bitcast <2 x i64> %2584 to <4 x i32>
  %2729 = icmp eq <4 x i32> %2728, zeroinitializer
  %2730 = sext <4 x i1> %2729 to <4 x i32>
  %2731 = bitcast <4 x i32> %2730 to <2 x i64>
  %2732 = call <2 x i64> @llvm_x86_sse2_psrli_q(<2 x i64> %2731, i32 32) #2
  %2733 = and <2 x i64> %2731, %2732
  %2734 = call <2 x i64> @llvm_x86_sse2_pslli_q(<2 x i64> %2733, i32 32) #2
  %2735 = or <2 x i64> %2733, %2734
  %2736 = xor <2 x i64> %2735, <i64 -1, i64 -1>
  %2737 = bitcast <2 x i64> %2736 to <2 x double>
  %2738 = call i32 @llvm_x86_sse2_movmsk_pd(<2 x double> %2737) #2
  %2739 = zext i32 %2738 to i64
  %2740 = and i64 %2739, 255
  %2741 = shl nsw i64 %2726, 1
  %2742 = shl i64 %2740, %2741
  %2743 = load i64* %60, align 16, !tbaa !4
  %2744 = add i64 %2742, %2743
  store i64 %2744, i64* %60, align 16, !tbaa !4
  %2745 = getelementptr inbounds %class.BitStreamScanner* %match_scanner.i, i64 0, i32 0, i32 0, i64 %2726
  store <2 x i64> %2647, <2 x i64>* %2745, align 16, !tbaa !1
  %2746 = bitcast <2 x i64> %2647 to <4 x i32>
  %2747 = icmp eq <4 x i32> %2746, zeroinitializer
  %2748 = sext <4 x i1> %2747 to <4 x i32>
  %2749 = bitcast <4 x i32> %2748 to <2 x i64>
  %2750 = call <2 x i64> @llvm_x86_sse2_psrli_q(<2 x i64> %2749, i32 32) #2
  %2751 = and <2 x i64> %2749, %2750
  %2752 = call <2 x i64> @llvm_x86_sse2_pslli_q(<2 x i64> %2751, i32 32) #2
  %2753 = or <2 x i64> %2751, %2752
  %2754 = xor <2 x i64> %2753, <i64 -1, i64 -1>
  %2755 = bitcast <2 x i64> %2754 to <2 x double>
  %2756 = call i32 @llvm_x86_sse2_movmsk_pd(<2 x double> %2755) #2
  %2757 = zext i32 %2756 to i64
  %2758 = and i64 %2757, 255
  %2759 = shl i64 %2758, %2741
  %2760 = load i64* %61, align 16, !tbaa !4
  %2761 = add i64 %2759, %2760
  store i64 %2761, i64* %61, align 16, !tbaa !4
  %i.045.i = add i32 %blk.1.lcssa.i, 1
  %2762 = icmp slt i32 %i.045.i, 15
  br i1 %2762, label %.lr.ph48.i, label %.preheader.i

.lr.ph48.i:                                       ; preds = %2725
  %2763 = call <2 x i64> @llvm_x86_sse2_psrli_q(<2 x i64> <i64 -1, i64 -1>, i32 32) #2
  %2764 = call <2 x i64> @llvm_x86_sse2_pslli_q(<2 x i64> %2763, i32 32) #2
  %2765 = or <2 x i64> %2763, %2764
  %2766 = xor <2 x i64> %2765, <i64 -1, i64 -1>
  %2767 = bitcast <2 x i64> %2766 to <2 x double>
  %2768 = call i32 @llvm_x86_sse2_movmsk_pd(<2 x double> %2767) #2
  %2769 = zext i32 %2768 to i64
  %2770 = and i64 %2769, 255
  %2771 = sext i32 %i.045.i to i64
  br label %2776

.preheader.i:                                     ; preds = %2776, %2725
  %.pr178.i = phi i64 [ %2744, %2725 ], [ %2781, %2776 ]
  %2772 = phi i64 [ %2761, %2725 ], [ %2784, %2776 ]
  %2773 = icmp eq i64 %2772, 0
  br i1 %2773, label %thread-pre-split.i, label %.lr.ph44.i

.lr.ph44.i:                                       ; preds = %.preheader.i
  %2774 = bitcast %class.BitStreamScanner* %match_scanner.i to [30 x i64]*
  %2775 = bitcast %class.BitStreamScanner* %LF_scanner.i to [30 x i64]*
  br label %2785

; <label>:2776                                    ; preds = %2776, %.lr.ph48.i
  %indvars.iv.i = phi i64 [ %2771, %.lr.ph48.i ], [ %indvars.iv.next.i, %2776 ]
  %i.046.i = phi i32 [ %i.045.i, %.lr.ph48.i ], [ %i.0.i, %2776 ]
  %2777 = getelementptr inbounds %class.BitStreamScanner* %LF_scanner.i, i64 0, i32 0, i32 0, i64 %indvars.iv.i
  store <2 x i64> zeroinitializer, <2 x i64>* %2777, align 16, !tbaa !1
  %2778 = shl nsw i64 %indvars.iv.i, 1
  %2779 = shl i64 %2770, %2778
  %2780 = load i64* %60, align 16, !tbaa !4
  %2781 = add i64 %2779, %2780
  store i64 %2781, i64* %60, align 16, !tbaa !4
  %2782 = getelementptr inbounds %class.BitStreamScanner* %match_scanner.i, i64 0, i32 0, i32 0, i64 %indvars.iv.i
  store <2 x i64> zeroinitializer, <2 x i64>* %2782, align 16, !tbaa !1
  %2783 = load i64* %61, align 16, !tbaa !4
  %2784 = add i64 %2783, %2779
  store i64 %2784, i64* %61, align 16, !tbaa !4
  %i.0.i = add nsw i32 %i.046.i, 1
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1
  %exitcond.i = icmp eq i32 %i.0.i, 15
  br i1 %exitcond.i, label %.preheader.i, label %2776

; <label>:2785                                    ; preds = %2837, %.lr.ph44.i
  %2786 = phi i64 [ %.pr178.i, %.lr.ph44.i ], [ %.pr179.i, %2837 ]
  %2787 = phi i64 [ %2772, %.lr.ph44.i ], [ %2800, %2837 ]
  %line_start.242.i = phi i32 [ 0, %.lr.ph44.i ], [ %2840, %2837 ]
  %2788 = call i64 @llvm.cttz.i64(i64 %2787, i1 true) #2
  %2789 = trunc i64 %2788 to i32
  %2790 = getelementptr inbounds [30 x i64]* %2774, i64 0, i64 %2788
  %2791 = load i64* %2790, align 8, !tbaa !4
  %2792 = call i64 @llvm.cttz.i64(i64 %2791, i1 true) #2
  %2793 = trunc i64 %2792 to i32
  %2794 = add i64 %2791, -1
  %2795 = and i64 %2794, %2791
  store i64 %2795, i64* %2790, align 8, !tbaa !4
  %2796 = load i64* %61, align 16, !tbaa !4
  %2797 = icmp eq i64 %2795, 0
  %2798 = zext i1 %2797 to i64
  %2799 = sub i64 %2796, %2798
  %2800 = and i64 %2799, %2796
  store i64 %2800, i64* %61, align 16, !tbaa !4
  %2801 = shl nuw nsw i32 %2789, 6
  %2802 = or i32 %2793, %2801
  %2803 = call i64 @llvm.cttz.i64(i64 %2786, i1 true) #2
  %2804 = trunc i64 %2803 to i32
  %2805 = getelementptr inbounds [30 x i64]* %2775, i64 0, i64 %2803
  %2806 = load i64* %2805, align 8, !tbaa !4
  %2807 = call i64 @llvm.cttz.i64(i64 %2806, i1 true) #2
  %2808 = trunc i64 %2807 to i32
  %2809 = add i64 %2806, -1
  %2810 = and i64 %2809, %2806
  store i64 %2810, i64* %2805, align 8, !tbaa !4
  %2811 = load i64* %60, align 16, !tbaa !4
  %2812 = icmp eq i64 %2810, 0
  %2813 = zext i1 %2812 to i64
  %2814 = sub i64 %2811, %2813
  %2815 = and i64 %2814, %2811
  store i64 %2815, i64* %60, align 16, !tbaa !4
  %2816 = shl nuw nsw i32 %2804, 6
  %2817 = or i32 %2808, %2816
  %2818 = icmp ult i32 %2817, %2802
  br i1 %2818, label %.lr.ph39.i, label %2837

.lr.ph39.i:                                       ; preds = %.lr.ph39.i, %2785
  %2819 = phi i64 [ %2832, %.lr.ph39.i ], [ %2815, %2785 ]
  %line_end.137.i = phi i32 [ %2834, %.lr.ph39.i ], [ %2817, %2785 ]
  %2820 = call i64 @llvm.cttz.i64(i64 %2819, i1 true) #2
  %2821 = trunc i64 %2820 to i32
  %2822 = getelementptr inbounds [30 x i64]* %2775, i64 0, i64 %2820
  %2823 = load i64* %2822, align 8, !tbaa !4
  %2824 = call i64 @llvm.cttz.i64(i64 %2823, i1 true) #2
  %2825 = trunc i64 %2824 to i32
  %2826 = add i64 %2823, -1
  %2827 = and i64 %2826, %2823
  store i64 %2827, i64* %2822, align 8, !tbaa !4
  %2828 = load i64* %60, align 16, !tbaa !4
  %2829 = icmp eq i64 %2827, 0
  %2830 = zext i1 %2829 to i64
  %2831 = sub i64 %2828, %2830
  %2832 = and i64 %2831, %2828
  store i64 %2832, i64* %60, align 16, !tbaa !4
  %2833 = shl nuw nsw i32 %2821, 6
  %2834 = or i32 %2825, %2833
  %2835 = icmp ult i32 %2834, %2802
  br i1 %2835, label %.lr.ph39.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph39.i
  %2836 = add nsw i32 %line_end.137.i, 1
  br label %2837

; <label>:2837                                    ; preds = %._crit_edge.i, %2785
  %.pr179.i = phi i64 [ %2832, %._crit_edge.i ], [ %2815, %2785 ]
  %line_end.1.lcssa.i = phi i32 [ %2834, %._crit_edge.i ], [ %2817, %2785 ]
  %line_start.3.lcssa.i = phi i32 [ %2836, %._crit_edge.i ], [ %line_start.242.i, %2785 ]
  %2838 = sext i32 %line_start.3.lcssa.i to i64
  %2839 = getelementptr inbounds [1920 x i8]* %src_buffer.i, i64 0, i64 %2838
  %2840 = add i32 %line_end.1.lcssa.i, 1
  %2841 = sub i32 %2840, %line_start.3.lcssa.i
  %2842 = sext i32 %2841 to i64
  %2843 = call i64 @fwrite(i8* %2839, i64 1, i64 %2842, %struct._IO_FILE* %outfile.0) #2
  %2844 = icmp eq i64 %2800, 0
  br i1 %2844, label %thread-pre-split.i, label %2785

thread-pre-split.i:                               ; preds = %2837, %.preheader.i
  %.pr.i = phi i64 [ %.pr178.i, %.preheader.i ], [ %.pr179.i, %2837 ]
  %2845 = icmp eq i64 %.pr.i, 0
  br i1 %2845, label %_ZL10do_processP8_IO_FILES0_i.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %thread-pre-split.i
  %2846 = bitcast %class.BitStreamScanner* %LF_scanner.i to [30 x i64]*
  br label %2847

; <label>:2847                                    ; preds = %2847, %.lr.ph.i
  %2848 = phi i64 [ %.pr.i, %.lr.ph.i ], [ %2858, %2847 ]
  %2849 = call i64 @llvm.cttz.i64(i64 %2848, i1 true) #2
  %2850 = getelementptr inbounds [30 x i64]* %2846, i64 0, i64 %2849
  %2851 = load i64* %2850, align 8, !tbaa !4
  %2852 = add i64 %2851, -1
  %2853 = and i64 %2852, %2851
  store i64 %2853, i64* %2850, align 8, !tbaa !4
  %2854 = load i64* %60, align 16, !tbaa !4
  %2855 = icmp eq i64 %2853, 0
  %2856 = zext i1 %2855 to i64
  %2857 = sub i64 %2854, %2856
  %2858 = and i64 %2857, %2854
  store i64 %2858, i64* %60, align 16, !tbaa !4
  %2859 = icmp eq i64 %2858, 0
  br i1 %2859, label %_ZL10do_processP8_IO_FILES0_i.exit, label %2847

_ZL10do_processP8_IO_FILES0_i.exit:               ; preds = %2847, %thread-pre-split.i, %2723
  call void @llvm.lifetime.end(i64 1920, i8* %56) #2
  call void @llvm.lifetime.end(i64 256, i8* %55) #2
  call void @llvm.lifetime.end(i64 256, i8* %54) #2
  %2860 = call i32 @fclose(%struct._IO_FILE* %19)
  %2861 = call i32 @fclose(%struct._IO_FILE* %outfile.0)
  ret i32 0
}

; Function Attrs: nounwind
declare i32 @getopt(i32, i8**, i8*) #1

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #4

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fopen(i8* nocapture, i8* nocapture) #1

; Function Attrs: nounwind
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: nounwind
declare i32 @fclose(%struct._IO_FILE* nocapture) #1

; Function Attrs: nounwind readnone
declare <2 x i64> @llvm.x86.sse2.psll.dq(<2 x i64>, i32) #5

; Function Attrs: nounwind readnone
declare <2 x i64> @llvm.x86.sse2.pslli.q(<2 x i64>, i32) #5

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare i64 @fread(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #1

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #1

; Function Attrs: nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind readnone
declare <2 x i64> @llvm.x86.sse2.psrli.q(<2 x i64>, i32) #5

; Function Attrs: nounwind readnone
declare <2 x i64> @llvm.x86.sse2.psrl.dq(<2 x i64>, i32) #5

; Function Attrs: nounwind readnone
declare <2 x i64> @llvm.x86.sse2.psll.q(<2 x i64>, <2 x i64>) #5

; Function Attrs: nounwind readnone
declare <2 x i64> @llvm.x86.sse2.psrl.q(<2 x i64>, <2 x i64>) #5

; Function Attrs: nounwind readnone
declare i64 @llvm.cttz.i64(i64, i1) #5

; Function Attrs: nounwind readnone
declare i64 @llvm.ctlz.i64(i64, i1) #5

; Function Attrs: nounwind readnone
declare <8 x i16> @llvm.x86.sse2.psrli.w(<8 x i16>, i32) #5

; Function Attrs: nounwind readnone
declare <4 x i32> @llvm.x86.sse2.psrli.d(<4 x i32>, i32) #5

; Function Attrs: nounwind readnone
declare <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8>, <16 x i8>) #5

; Function Attrs: nounwind readnone
declare i32 @llvm.x86.sse2.pmovmskb.128(<16 x i8>) #5

; Function Attrs: nounwind readnone
declare i32 @llvm.x86.sse2.movmsk.pd(<2 x double>) #5

; Function Attrs: nounwind readnone
declare <8 x i16> @llvm.x86.sse2.pslli.w(<8 x i16>, i32) #5

; Function Attrs: nounwind readnone
declare <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16>, <8 x i16>) #5

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

; Function Attrs: nounwind
declare i32 @sched_setaffinity(i32, i64, %struct.cpu_set_t*) #1

define internal void @_GLOBAL__I_a() section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* @__dso_handle) #2
  store <2 x i64> <i64 1, i64 0>, <2 x i64>* @_ZL12simd_const_1, align 16, !tbaa !1
  %2 = tail call {}* @llvm.invariant.start(i64 16, i8* bitcast (<2 x i64>* @_ZL12simd_const_1 to i8*)) #2
  %3 = load <2 x i64>* @_ZL12simd_const_1, align 16, !tbaa !1
  %4 = tail call <2 x i64> @llvm_x86_sse2_psll_dq(<2 x i64> %3, i32 64) #2
  %5 = tail call <2 x i64> @llvm_x86_sse2_pslli_q(<2 x i64> %4, i32 63) #2
  store <2 x i64> %5, <2 x i64>* @_ZL13simd_sign_bit, align 16, !tbaa !1
  %6 = tail call {}* @llvm.invariant.start(i64 16, i8* bitcast (<2 x i64>* @_ZL13simd_sign_bit to i8*)) #2
  store <2 x i64> <i64 -1, i64 -1>, <2 x i64>* @EOF_mask, align 16, !tbaa !1
  ret void
}

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture) #2

attributes #0 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { noreturn nounwind }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
!4 = metadata !{metadata !"long", metadata !1}



define <8 x i16> @llvm_x86_sse2_psrli_w(<8 x i16> %x, i32 %y) {
	%newY = trunc i32 %y to i16
	%1 = insertelement <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0> , i16 %newY ,i32 0
	%2 = insertelement <8 x i16> %1 , i16 %newY, i32 1
	%3 = insertelement <8 x i16> %2 , i16 %newY, i32 2
	%4 = insertelement <8 x i16> %3 , i16 %newY, i32 3
	%5 = insertelement <8 x i16> %4 , i16 %newY, i32 4
	%6 = insertelement <8 x i16> %5 , i16 %newY, i32 5
	%7 = insertelement <8 x i16> %6 , i16 %newY, i32 6
	%8 = insertelement <8 x i16> %7 , i16 %newY, i32 7

	%result = lshr <8 x i16> %x,  %8
	ret <8 x i16> %result
}


define <16 x i8> @llvm_x86_sse2_packuswb_128(<8 x i16> %x, <8 x i16> %y) {
		
	%high8 = trunc <8 x i16> %y to <8 x i8>
	%low8 = trunc <8 x i16> %x to <8 x i8>
	%result = shufflevector <8 x i8> %low8, <8 x i8> %high8, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7 ,i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>

	ret <16 x i8> %result

}

define <8 x i16> @llvm_x86_sse2_pslli_w(<8 x i16> %x, i32 %y) {
	%newY = trunc i32 %y to i16
	%tmp = bitcast i16 %newY to <1 x i16>
	%yArray = shufflevector <1 x i16> %tmp, <1 x i16> <i16 0> ,  <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 >
	%result = shl <8 x i16> %x,  %yArray
	ret <8 x i16> %result
}

define <2 x i64> @llvm_x86_sse2_psrli_q(<2 x i64> %x, i32 %y) {
	%newY = zext i32 %y to i64
	%1 = insertelement <2 x i64> <i64 0, i64 0> , i64 %newY ,i32 0
	%2 = insertelement <2 x i64> %1 , i64 %newY, i32 1
	%result = lshr <2 x i64> %x,  %2
	ret <2 x i64> %result
}



define  <2 x i64> @llvm_x86_sse2_psrl_dq(<2 x i64> %x, i32 %y) {

	%newY = zext i32 %y to i128
;	%step = mul i128 %newY , 8 ; conflicts with intel sse2 ISA

	%newX = bitcast <2 x i64> %x to i128
	%newX1 = lshr i128 %newX, %newY

	%result = bitcast i128 %newX1 to <2 x i64>
	ret <2 x i64> %result

}



define <2 x i64> @llvm_x86_sse2_psll_dq(<2 x i64> %x, i32 %y) {
	
	%step = zext i32 %y to i128
;	%step = mul i128 %newY , 8 ; conflicts with intel sse2 ISA

	%newX = bitcast <2 x i64> %x to i128
	%newX1 = shl i128 %newX, %step

	%result = bitcast i128 %newX1 to <2 x i64>
	ret <2 x i64> %result
}


define i32 @llvm_x86_sse2_pmovmskb_128(<16 x i8> %x) {
	%msb = lshr <16 x i8> %x, <i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7>
	%tmp = trunc <16 x i8> %msb to <16 x i1>
	%result16 = bitcast <16 x i1> %tmp to i16
	%result = zext i16 %result16 to i32 
	ret i32 %result
}


define <2 x i64> @llvm_x86_sse2_pslli_q(<2 x i64> %x, i32 %y) {
	%newY = zext i32 %y to i64
	%1 = insertelement <2 x i64> <i64 0, i64 0> , i64 %newY ,i32 0
	%2 = insertelement <2 x i64> %1 , i64 %newY, i32 1
	%result = shl <2 x i64> %x,  %2
	ret <2 x i64> %result
}


define i32 @llvm_x86_sse2_movmsk_pd(<2 x double> %x) {
	%x0 = extractelement <2 x double> %x, i32 0
	%x1 = extractelement <2 x double> %x, i32 1
	%i0 = bitcast double %x0 to i64
	%i1 = bitcast double %x1 to i64
	%msb0 = lshr i64 %i0, 63
	%msb1 = lshr i64 %i1, 63

	%1 = mul i64 %msb1, 2
	%2 = add i64 %1, %msb0
	%result = trunc i64 %2 to i32
	ret i32 %result
}



define <4 x i32> @llvm_x86_sse2_psrli_d(<4 x i32> %x, i32 %y) {
	%1 = insertelement <4 x i32> <i32 0, i32 0, i32 0, i32 0> , i32 %y ,i32 0
	%2 = insertelement <4 x i32> %1 , i32 %y, i32 1
	%3 = insertelement <4 x i32> %2 , i32 %y, i32 2
	%4 = insertelement <4 x i32> %3 , i32 %y, i32 3

	%result = lshr <4 x i32> %x,  %4
	ret <4 x i32> %result
}


define i64 @absSum(<8 x i8> %x) {
	%ptri = alloca i32
	store i32 0, i32* %ptri

	%ptrsum = alloca i64
	store i64 0, i64* %ptrsum
	br label %loop

loop:
	%i = load i32* %ptri
	%sum = load i64* %ptrsum

	%value = extractelement <8 x i8> %x, i32 %i
	%sign = icmp slt i8 %value, 0
	br i1 %sign, label %lt0, label %ge0

lt0:
	%con = xor i8 %value, -1
	%abs = add i8 %con, 1
	%abs64_1 = zext i8 %abs to i64
	%newsum_1 = add i64 %sum, %abs64_1
	store i64 %newsum_1, i64* %ptrsum
	br label %end

ge0:
	%abs64_2 = zext i8 %value to i64
	%newsum_2 = add i64 %sum, %abs64_2
	store i64 %newsum_2, i64* %ptrsum
	br label %end

end:
	%newi = add i32 %i, 1
	store i32 %newi, i32* %ptri
	%stop = icmp eq i32 %newi, 8
	br i1 %stop, label %exit, label %loop

exit:
	%abssum = load i64* %ptrsum
	ret i64 %abssum
	
}

define <2 x i64> @llvm_x86_sse2_psad_bw(<16 x i8> %x, <16 x i8> %y) {
	%1 = sub <16 x i8> %x , %y
	%2 = shufflevector <16 x i8> %1, <16 x i8> %1, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
	%3 = shufflevector <16 x i8> %1, <16 x i8> %1, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
	%abssum0 = call i64 @absSum(<8 x i8> %2)
	%abssum1 = call i64 @absSum(<8 x i8> %3)
	%4 = insertelement <2 x i64> <i64 0, i64 0> , i64 %abssum0, i32 0
	%result = insertelement <2 x i64> %4, i64 %abssum1, i32 1

	ret <2 x i64> %result
}



define  <2 x i64> @llvm_x86_sse2_psrl_q(<2 x i64> %x, <2 x i64> %y) {
	%result = lshr <2 x i64> %x,  %y
	ret <2 x i64> %result

}


define <2 x i64> @llvm_x86_sse2_psll_q(<2 x i64> %x, <2 x i64> %y) {
	%result = shl <2 x i64> %x,  %y
	ret <2 x i64> %result
}
