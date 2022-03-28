   1              		.syntax unified
   2              		.cpu cortex-m3
   3              		.fpu softvfp
   4              		.eabi_attribute 20, 1
   5              		.eabi_attribute 21, 1
   6              		.eabi_attribute 23, 3
   7              		.eabi_attribute 24, 1
   8              		.eabi_attribute 25, 1
   9              		.eabi_attribute 26, 1
  10              		.eabi_attribute 30, 6
  11              		.eabi_attribute 34, 1
  12              		.eabi_attribute 18, 4
  13              		.thumb
  14              		.file	"main.c"
  15              		.text
  16              	.Ltext0:
  17              		.cfi_sections	.debug_frame
  18              		.global	__aeabi_dmul
  19              		.global	__aeabi_d2iz
  20              		.section	.rodata
  21              		.align	2
  22              	.LC2:
  23 0000 706F696E 		.ascii	"point %d: (x:%d, y:%d) \012\000"
  23      74202564 
  23      3A202878 
  23      3A25642C 
  23      20793A25 
  24 0019 000000   		.align	2
  25              	.LC3:
  26 001c 4320203A 		.ascii	"C  : class %d contains more datapoint \012\000"
  26      20636C61 
  26      73732025 
  26      6420636F 
  26      6E746169 
  27              		.align	2
  28              	.LC4:
  29 0044 61736D3A 		.ascii	"asm: class %d contains more datapoint \012\000"
  29      20636C61 
  29      73732025 
  29      6420636F 
  29      6E746169 
  30 006c 00000000 		.align	3
  31              	.LC0:
  32 0070 00000000 		.word	0
  33 0074 00002040 		.word	1075838976
  34 0078 00000000 		.word	0
  35 007c 00000440 		.word	1074003968
  36 0080 00000000 		.word	0
  37 0084 00002440 		.word	1076101120
  38 0088 00000000 		.word	0
  39 008c 00000040 		.word	1073741824
  40 0090 00000000 		.word	0
  41 0094 00002240 		.word	1075970048
  42 0098 00000000 		.word	0
  43 009c 00001440 		.word	1075052544
  44 00a0 00000000 		.word	0
  45 00a4 00001040 		.word	1074790400
  46 00a8 00000000 		.word	0
  47 00ac 0000E03F 		.word	1071644672
  48 00b0 00000000 		.word	0
  49 00b4 00001040 		.word	1074790400
  50 00b8 00000000 		.word	0
  51 00bc 00001040 		.word	1074790400
  52 00c0 00000000 		.word	0
  53 00c4 00000840 		.word	1074266112
  54 00c8 00000000 		.word	0
  55 00cc 00002240 		.word	1075970048
  56 00d0 00000000 		.word	0
  57 00d4 00001840 		.word	1075314688
  58 00d8 00000000 		.word	0
  59 00dc 00000000 		.word	0
  60 00e0 00000000 		.word	0
  61 00e4 00001040 		.word	1074790400
  62 00e8 00000000 		.word	0
  63 00ec 0000E03F 		.word	1071644672
  64              		.align	3
  65              	.LC1:
  66 00f0 00000000 		.word	0
  67 00f4 00001040 		.word	1074790400
  68 00f8 00000000 		.word	0
  69 00fc 0000E03F 		.word	1071644672
  70 0100 00000000 		.word	0
  71 0104 00002040 		.word	1075838976
  72 0108 00000000 		.word	0
  73 010c 00000440 		.word	1074003968
  74              		.section	.text.main,"ax",%progbits
  75              		.align	2
  76              		.global	main
  77              		.thumb
  78              		.thumb_func
  80              	main:
  81              	.LFB0:
  82              		.file 1 "../src/main.c"
   1:../src/main.c **** #include "stdio.h"
   2:../src/main.c **** #define DATAPOINT 8
   3:../src/main.c **** #define CENTROID 2
   4:../src/main.c **** // CG2028 Assignment, Sem 2, AY 2021/22
   5:../src/main.c **** // (c) CG2028 Teaching Team, ECE NUS, 2021
   6:../src/main.c **** 
   7:../src/main.c **** 
   8:../src/main.c **** int classification_cCode(int* arg1, int* arg2, int* arg3);
   9:../src/main.c **** extern int classification(int* arg1, int* arg2, int* arg3, int arg4);// reference C implementation
  10:../src/main.c **** int main(void)
  11:../src/main.c **** {
  83              		.loc 1 11 0
  84              		.cfi_startproc
  85              		@ args = 0, pretend = 0, frame = 280
  86              		@ frame_needed = 1, uses_anonymous_args = 0
  87 0000 B0B5     		push	{r4, r5, r7, lr}
  88              	.LCFI0:
  89              		.cfi_def_cfa_offset 16
  90              		.cfi_offset 14, -4
  91              		.cfi_offset 7, -8
  92              		.cfi_offset 5, -12
  93              		.cfi_offset 4, -16
  94 0002 C6B0     		sub	sp, sp, #280
  95              	.LCFI1:
  96              		.cfi_def_cfa_offset 296
  97 0004 00AF     		add	r7, sp, #0
  98              	.LCFI2:
  99              		.cfi_def_cfa_register 7
  12:../src/main.c **** 	int i,j;
  13:../src/main.c **** 
  14:../src/main.c **** 	double points[DATAPOINT][2] = {{8.0, 2.5},
 100              		.loc 1 14 0
 101 0006 40F20003 		movw	r3, #:lower16:.LC0
 102 000a C0F20003 		movt	r3, #:upper16:.LC0
 103 000e 07F19001 		add	r1, r7, #144
 104 0012 1A46     		mov	r2, r3
 105 0014 4FF08003 		mov	r3, #128
 106 0018 0846     		mov	r0, r1
 107 001a 1146     		mov	r1, r2
 108 001c 1A46     		mov	r2, r3
 109 001e FFF7FEFF 		bl	memcpy
  15:../src/main.c **** 	                                {10.0, 2.0},
  16:../src/main.c **** 	                                {9.0, 5.0},
  17:../src/main.c **** 	                                {4.0, 0.5},
  18:../src/main.c **** 	                                {4.0, 4.0},
  19:../src/main.c **** 	                                {3.0, 9.0},
  20:../src/main.c **** 	                                {6.0, 0.0},
  21:../src/main.c **** 	                                {4.0, 0.5}};
  22:../src/main.c **** 
  23:../src/main.c **** 
  24:../src/main.c **** 	double centroids[CENTROID][2] ={ {4.0, 0.5},
 110              		.loc 1 24 0
 111 0022 40F20003 		movw	r3, #:lower16:.LC1
 112 0026 C0F20003 		movt	r3, #:upper16:.LC1
 113 002a 07F17004 		add	r4, r7, #112
 114 002e 1D46     		mov	r5, r3
 115 0030 0FCD     		ldmia	r5!, {r0, r1, r2, r3}
 116 0032 0FC4     		stmia	r4!, {r0, r1, r2, r3}
 117 0034 95E80F00 		ldmia	r5, {r0, r1, r2, r3}
 118 0038 84E80F00 		stmia	r4, {r0, r1, r2, r3}
  25:../src/main.c **** 	                                  {8.0, 2.5}};
  26:../src/main.c **** 	int points10[DATAPOINT][2];
  27:../src/main.c **** 	int centroids10[CENTROID][2];
  28:../src/main.c **** 	int class[DATAPOINT] = {0,0,0,0,0,0,0,0};
 119              		.loc 1 28 0
 120 003c 3B46     		mov	r3, r7
 121 003e 4FF00002 		mov	r2, #0
 122 0042 1A60     		str	r2, [r3, #0]
 123 0044 3B46     		mov	r3, r7
 124 0046 4FF00002 		mov	r2, #0
 125 004a 5A60     		str	r2, [r3, #4]
 126 004c 3B46     		mov	r3, r7
 127 004e 4FF00002 		mov	r2, #0
 128 0052 9A60     		str	r2, [r3, #8]
 129 0054 3B46     		mov	r3, r7
 130 0056 4FF00002 		mov	r2, #0
 131 005a DA60     		str	r2, [r3, #12]
 132 005c 3B46     		mov	r3, r7
 133 005e 4FF00002 		mov	r2, #0
 134 0062 1A61     		str	r2, [r3, #16]
 135 0064 3B46     		mov	r3, r7
 136 0066 4FF00002 		mov	r2, #0
 137 006a 5A61     		str	r2, [r3, #20]
 138 006c 3B46     		mov	r3, r7
 139 006e 4FF00002 		mov	r2, #0
 140 0072 9A61     		str	r2, [r3, #24]
 141 0074 3B46     		mov	r3, r7
 142 0076 4FF00002 		mov	r2, #0
 143 007a DA61     		str	r2, [r3, #28]
  29:../src/main.c **** 
  30:../src/main.c **** 	// Multiply the coordinates by 10 so that the final answers have 1 decimal point
  31:../src/main.c **** 	for (i=0; i<DATAPOINT; i++)
 144              		.loc 1 31 0
 145 007c 4FF00003 		mov	r3, #0
 146 0080 C7F81431 		str	r3, [r7, #276]
 147 0084 60E0     		b	.L2
 148              	.L5:
  32:../src/main.c **** 	{
  33:../src/main.c **** 		for (j=0; j<2; j++)
 149              		.loc 1 33 0
 150 0086 4FF00003 		mov	r3, #0
 151 008a C7F81031 		str	r3, [r7, #272]
 152 008e 34E0     		b	.L3
 153              	.L4:
  34:../src/main.c **** 			points10[i][j] = points[i][j]*10;
 154              		.loc 1 34 0 discriminator 2
 155 0090 D7F81431 		ldr	r3, [r7, #276]
 156 0094 4FEA4302 		lsl	r2, r3, #1
 157 0098 D7F81031 		ldr	r3, [r7, #272]
 158 009c D318     		adds	r3, r2, r3
 159 009e 4FEAC303 		lsl	r3, r3, #3
 160 00a2 07F58C71 		add	r1, r7, #280
 161 00a6 CB18     		adds	r3, r1, r3
 162 00a8 A3F18803 		sub	r3, r3, #136
 163 00ac D3E90023 		ldrd	r2, [r3]
 164 00b0 1046     		mov	r0, r2
 165 00b2 1946     		mov	r1, r3
 166 00b4 4FF00002 		mov	r2, #0
 167 00b8 4FF08043 		mov	r3, #1073741824
 168 00bc 03F51013 		add	r3, r3, #2359296
 169 00c0 FFF7FEFF 		bl	__aeabi_dmul
 170 00c4 0246     		mov	r2, r0
 171 00c6 0B46     		mov	r3, r1
 172 00c8 1046     		mov	r0, r2
 173 00ca 1946     		mov	r1, r3
 174 00cc FFF7FEFF 		bl	__aeabi_d2iz
 175 00d0 0246     		mov	r2, r0
 176 00d2 D7F81431 		ldr	r3, [r7, #276]
 177 00d6 4FEA4301 		lsl	r1, r3, #1
 178 00da D7F81031 		ldr	r3, [r7, #272]
 179 00de CB18     		adds	r3, r1, r3
 180 00e0 4FEA8303 		lsl	r3, r3, #2
 181 00e4 07F58C71 		add	r1, r7, #280
 182 00e8 CB18     		adds	r3, r1, r3
 183 00ea 43F8E82C 		str	r2, [r3, #-232]
  33:../src/main.c **** 		for (j=0; j<2; j++)
 184              		.loc 1 33 0 discriminator 2
 185 00ee D7F81031 		ldr	r3, [r7, #272]
 186 00f2 03F10103 		add	r3, r3, #1
 187 00f6 C7F81031 		str	r3, [r7, #272]
 188              	.L3:
  33:../src/main.c **** 		for (j=0; j<2; j++)
 189              		.loc 1 33 0 is_stmt 0 discriminator 1
 190 00fa D7F81031 		ldr	r3, [r7, #272]
 191 00fe 012B     		cmp	r3, #1
 192 0100 C6DD     		ble	.L4
  35:../src/main.c **** 		printf("point %d: (x:%d, y:%d) \n", i, points10[i][0],points10[i][1]);
 193              		.loc 1 35 0 is_stmt 1
 194 0102 40F20003 		movw	r3, #:lower16:.LC2
 195 0106 C0F20003 		movt	r3, #:upper16:.LC2
 196 010a D7F81421 		ldr	r2, [r7, #276]
 197 010e 4FEAC202 		lsl	r2, r2, #3
 198 0112 07F58C71 		add	r1, r7, #280
 199 0116 8A18     		adds	r2, r1, r2
 200 0118 52F8E85C 		ldr	r5, [r2, #-232]
 201 011c D7F81421 		ldr	r2, [r7, #276]
 202 0120 4FEAC202 		lsl	r2, r2, #3
 203 0124 07F58C71 		add	r1, r7, #280
 204 0128 8A18     		adds	r2, r1, r2
 205 012a 52F8E44C 		ldr	r4, [r2, #-228]
 206 012e 1846     		mov	r0, r3
 207 0130 D7F81411 		ldr	r1, [r7, #276]
 208 0134 2A46     		mov	r2, r5
 209 0136 2346     		mov	r3, r4
 210 0138 FFF7FEFF 		bl	printf
  31:../src/main.c **** 	for (i=0; i<DATAPOINT; i++)
 211              		.loc 1 31 0
 212 013c D7F81431 		ldr	r3, [r7, #276]
 213 0140 03F10103 		add	r3, r3, #1
 214 0144 C7F81431 		str	r3, [r7, #276]
 215              	.L2:
  31:../src/main.c **** 	for (i=0; i<DATAPOINT; i++)
 216              		.loc 1 31 0 is_stmt 0 discriminator 1
 217 0148 D7F81431 		ldr	r3, [r7, #276]
 218 014c 072B     		cmp	r3, #7
 219 014e 9ADD     		ble	.L5
  36:../src/main.c **** 	}
  37:../src/main.c **** 
  38:../src/main.c **** 	for (i=0; i<CENTROID; i++)
 220              		.loc 1 38 0 is_stmt 1
 221 0150 4FF00003 		mov	r3, #0
 222 0154 C7F81431 		str	r3, [r7, #276]
 223 0158 43E0     		b	.L6
 224              	.L9:
  39:../src/main.c **** 		for (j=0; j<2; j++)
 225              		.loc 1 39 0
 226 015a 4FF00003 		mov	r3, #0
 227 015e C7F81031 		str	r3, [r7, #272]
 228 0162 34E0     		b	.L7
 229              	.L8:
  40:../src/main.c **** 			centroids10[i][j] = centroids[i][j]*10;
 230              		.loc 1 40 0 discriminator 2
 231 0164 D7F81431 		ldr	r3, [r7, #276]
 232 0168 4FEA4302 		lsl	r2, r3, #1
 233 016c D7F81031 		ldr	r3, [r7, #272]
 234 0170 D318     		adds	r3, r2, r3
 235 0172 4FEAC303 		lsl	r3, r3, #3
 236 0176 07F58C72 		add	r2, r7, #280
 237 017a D318     		adds	r3, r2, r3
 238 017c A3F1A803 		sub	r3, r3, #168
 239 0180 D3E90023 		ldrd	r2, [r3]
 240 0184 1046     		mov	r0, r2
 241 0186 1946     		mov	r1, r3
 242 0188 4FF00002 		mov	r2, #0
 243 018c 4FF08043 		mov	r3, #1073741824
 244 0190 03F51013 		add	r3, r3, #2359296
 245 0194 FFF7FEFF 		bl	__aeabi_dmul
 246 0198 0246     		mov	r2, r0
 247 019a 0B46     		mov	r3, r1
 248 019c 1046     		mov	r0, r2
 249 019e 1946     		mov	r1, r3
 250 01a0 FFF7FEFF 		bl	__aeabi_d2iz
 251 01a4 0246     		mov	r2, r0
 252 01a6 D7F81431 		ldr	r3, [r7, #276]
 253 01aa 4FEA4301 		lsl	r1, r3, #1
 254 01ae D7F81031 		ldr	r3, [r7, #272]
 255 01b2 CB18     		adds	r3, r1, r3
 256 01b4 4FEA8303 		lsl	r3, r3, #2
 257 01b8 07F58C71 		add	r1, r7, #280
 258 01bc CB18     		adds	r3, r1, r3
 259 01be 43F8F82C 		str	r2, [r3, #-248]
  39:../src/main.c **** 		for (j=0; j<2; j++)
 260              		.loc 1 39 0 discriminator 2
 261 01c2 D7F81031 		ldr	r3, [r7, #272]
 262 01c6 03F10103 		add	r3, r3, #1
 263 01ca C7F81031 		str	r3, [r7, #272]
 264              	.L7:
  39:../src/main.c **** 		for (j=0; j<2; j++)
 265              		.loc 1 39 0 is_stmt 0 discriminator 1
 266 01ce D7F81031 		ldr	r3, [r7, #272]
 267 01d2 012B     		cmp	r3, #1
 268 01d4 C6DD     		ble	.L8
  38:../src/main.c **** 	for (i=0; i<CENTROID; i++)
 269              		.loc 1 38 0 is_stmt 1
 270 01d6 D7F81431 		ldr	r3, [r7, #276]
 271 01da 03F10103 		add	r3, r3, #1
 272 01de C7F81431 		str	r3, [r7, #276]
 273              	.L6:
  38:../src/main.c **** 	for (i=0; i<CENTROID; i++)
 274              		.loc 1 38 0 is_stmt 0 discriminator 1
 275 01e2 D7F81431 		ldr	r3, [r7, #276]
 276 01e6 012B     		cmp	r3, #1
 277 01e8 B7DD     		ble	.L9
  41:../src/main.c **** 
  42:../src/main.c **** 	// Call assembly language function to perform classification
  43:../src/main.c **** 	printf( "C  : class %d contains more datapoint \n", classification_cCode(points10,centroids10,clas
 278              		.loc 1 43 0 is_stmt 1
 279 01ea 40F20004 		movw	r4, #:lower16:.LC3
 280 01ee C0F20004 		movt	r4, #:upper16:.LC3
 281 01f2 07F13001 		add	r1, r7, #48
 282 01f6 07F12002 		add	r2, r7, #32
 283 01fa 3B46     		mov	r3, r7
 284 01fc 0846     		mov	r0, r1
 285 01fe 1146     		mov	r1, r2
 286 0200 1A46     		mov	r2, r3
 287 0202 FFF7FEFF 		bl	classification_cCode
 288 0206 0346     		mov	r3, r0
 289 0208 2046     		mov	r0, r4
 290 020a 1946     		mov	r1, r3
 291 020c FFF7FEFF 		bl	printf
  44:../src/main.c **** 	printf( "asm: class %d contains more datapoint \n", classification(points10,centroids10,class, DAT
 292              		.loc 1 44 0
 293 0210 40F20004 		movw	r4, #:lower16:.LC4
 294 0214 C0F20004 		movt	r4, #:upper16:.LC4
 295 0218 07F13001 		add	r1, r7, #48
 296 021c 07F12002 		add	r2, r7, #32
 297 0220 3B46     		mov	r3, r7
 298 0222 0846     		mov	r0, r1
 299 0224 1146     		mov	r1, r2
 300 0226 1A46     		mov	r2, r3
 301 0228 4FF00803 		mov	r3, #8
 302 022c FFF7FEFF 		bl	classification
 303 0230 0346     		mov	r3, r0
 304 0232 2046     		mov	r0, r4
 305 0234 1946     		mov	r1, r3
 306 0236 FFF7FEFF 		bl	printf
 307              	.L10:
  45:../src/main.c **** 
  46:../src/main.c **** 	while (1); //halt
 308              		.loc 1 46 0 discriminator 1
 309 023a FEE7     		b	.L10
 310              		.cfi_endproc
 311              	.LFE0:
 313              		.section	.rodata
 314              		.align	2
 315              	.LC5:
 316 0110 706F696E 		.ascii	"point %d = centroid 1-->%d centroid 2 -->%d , class"
 316      74202564 
 316      203D2063 
 316      656E7472 
 316      6F696420 
 317 0143 203D2025 		.ascii	" = %d \012\000"
 317      64200A00 
 318 014b 00000000 		.section	.text.classification_cCode,"ax",%progbits
 318      00
 319              		.align	2
 320              		.global	classification_cCode
 321              		.thumb
 322              		.thumb_func
 324              	classification_cCode:
 325              	.LFB1:
  47:../src/main.c **** }
  48:../src/main.c **** int classification_cCode(int*points,int* centroids, int* class)
  49:../src/main.c **** {
 326              		.loc 1 49 0
 327              		.cfi_startproc
 328              		@ args = 0, pretend = 0, frame = 96
 329              		@ frame_needed = 1, uses_anonymous_args = 0
 330 0000 B0B5     		push	{r4, r5, r7, lr}
 331              	.LCFI3:
 332              		.cfi_def_cfa_offset 16
 333              		.cfi_offset 14, -4
 334              		.cfi_offset 7, -8
 335              		.cfi_offset 5, -12
 336              		.cfi_offset 4, -16
 337 0002 9AB0     		sub	sp, sp, #104
 338              	.LCFI4:
 339              		.cfi_def_cfa_offset 120
 340 0004 02AF     		add	r7, sp, #8
 341              	.LCFI5:
 342              		.cfi_def_cfa 7, 112
 343 0006 F860     		str	r0, [r7, #12]
 344 0008 B960     		str	r1, [r7, #8]
 345 000a 7A60     		str	r2, [r7, #4]
  50:../src/main.c **** 	int i,j;
  51:../src/main.c **** 	int d[CENTROID][DATAPOINT]; // squared Euclidean distance
  52:../src/main.c **** 	//int d1[DATAPOINT]; // squared Euclidean distance
  53:../src/main.c **** 	int d0_counter=0,d1_counter=0;
 346              		.loc 1 53 0
 347 000c 4FF00003 		mov	r3, #0
 348 0010 BB65     		str	r3, [r7, #88]
 349 0012 4FF00003 		mov	r3, #0
 350 0016 7B65     		str	r3, [r7, #84]
  54:../src/main.c **** 
  55:../src/main.c **** 
  56:../src/main.c **** 	for (i=0; i<DATAPOINT; i++)
 351              		.loc 1 56 0
 352 0018 4FF00003 		mov	r3, #0
 353 001c FB65     		str	r3, [r7, #92]
 354 001e A8E0     		b	.L12
 355              	.L15:
  57:../src/main.c **** 	{
  58:../src/main.c **** 		//(*((centroids+i) + j))
  59:../src/main.c **** 		d[0][i] = ((*((points+i*2) + 0))-(*((centroids+0*2) + 0))) * ((*((points+i*2) + 0))-(*((centroids
 356              		.loc 1 59 0
 357 0020 FB6D     		ldr	r3, [r7, #92]
 358 0022 4FEAC303 		lsl	r3, r3, #3
 359 0026 FA68     		ldr	r2, [r7, #12]
 360 0028 D318     		adds	r3, r2, r3
 361 002a 1A68     		ldr	r2, [r3, #0]
 362 002c BB68     		ldr	r3, [r7, #8]
 363 002e 1B68     		ldr	r3, [r3, #0]
 364 0030 D31A     		subs	r3, r2, r3
 365 0032 FA6D     		ldr	r2, [r7, #92]
 366 0034 4FEAC202 		lsl	r2, r2, #3
 367 0038 F968     		ldr	r1, [r7, #12]
 368 003a 8A18     		adds	r2, r1, r2
 369 003c 1168     		ldr	r1, [r2, #0]
 370 003e BA68     		ldr	r2, [r7, #8]
 371 0040 1268     		ldr	r2, [r2, #0]
 372 0042 8A1A     		subs	r2, r1, r2
 373 0044 02FB03F2 		mul	r2, r2, r3
 374 0048 FB6D     		ldr	r3, [r7, #92]
 375 004a 4FEAC303 		lsl	r3, r3, #3
 376 004e 03F10403 		add	r3, r3, #4
 377 0052 F968     		ldr	r1, [r7, #12]
 378 0054 CB18     		adds	r3, r1, r3
 379 0056 1968     		ldr	r1, [r3, #0]
 380 0058 BB68     		ldr	r3, [r7, #8]
 381 005a 03F10403 		add	r3, r3, #4
 382 005e 1B68     		ldr	r3, [r3, #0]
 383 0060 CB1A     		subs	r3, r1, r3
 384 0062 F96D     		ldr	r1, [r7, #92]
 385 0064 4FEAC101 		lsl	r1, r1, #3
 386 0068 01F10401 		add	r1, r1, #4
 387 006c F868     		ldr	r0, [r7, #12]
 388 006e 4118     		adds	r1, r0, r1
 389 0070 0868     		ldr	r0, [r1, #0]
 390 0072 B968     		ldr	r1, [r7, #8]
 391 0074 01F10401 		add	r1, r1, #4
 392 0078 0968     		ldr	r1, [r1, #0]
 393 007a 411A     		subs	r1, r0, r1
 394 007c 01FB03F3 		mul	r3, r1, r3
 395 0080 D218     		adds	r2, r2, r3
 396 0082 FB6D     		ldr	r3, [r7, #92]
 397 0084 4FEA8303 		lsl	r3, r3, #2
 398 0088 07F16000 		add	r0, r7, #96
 399 008c C318     		adds	r3, r0, r3
 400 008e 43F84C2C 		str	r2, [r3, #-76]
  60:../src/main.c **** 		d[1][i] = ((*((points+i*2) + 0))-(*((centroids+1*2) + 0))) * ((*((points+i*2) + 0))-(*((centroids
 401              		.loc 1 60 0
 402 0092 FB6D     		ldr	r3, [r7, #92]
 403 0094 4FEAC303 		lsl	r3, r3, #3
 404 0098 FA68     		ldr	r2, [r7, #12]
 405 009a D318     		adds	r3, r2, r3
 406 009c 1A68     		ldr	r2, [r3, #0]
 407 009e BB68     		ldr	r3, [r7, #8]
 408 00a0 03F10803 		add	r3, r3, #8
 409 00a4 1B68     		ldr	r3, [r3, #0]
 410 00a6 D31A     		subs	r3, r2, r3
 411 00a8 FA6D     		ldr	r2, [r7, #92]
 412 00aa 4FEAC202 		lsl	r2, r2, #3
 413 00ae F968     		ldr	r1, [r7, #12]
 414 00b0 8A18     		adds	r2, r1, r2
 415 00b2 1168     		ldr	r1, [r2, #0]
 416 00b4 BA68     		ldr	r2, [r7, #8]
 417 00b6 02F10802 		add	r2, r2, #8
 418 00ba 1268     		ldr	r2, [r2, #0]
 419 00bc 8A1A     		subs	r2, r1, r2
 420 00be 02FB03F2 		mul	r2, r2, r3
 421 00c2 FB6D     		ldr	r3, [r7, #92]
 422 00c4 4FEAC303 		lsl	r3, r3, #3
 423 00c8 03F10403 		add	r3, r3, #4
 424 00cc F968     		ldr	r1, [r7, #12]
 425 00ce CB18     		adds	r3, r1, r3
 426 00d0 1968     		ldr	r1, [r3, #0]
 427 00d2 BB68     		ldr	r3, [r7, #8]
 428 00d4 03F10C03 		add	r3, r3, #12
 429 00d8 1B68     		ldr	r3, [r3, #0]
 430 00da CB1A     		subs	r3, r1, r3
 431 00dc F96D     		ldr	r1, [r7, #92]
 432 00de 4FEAC101 		lsl	r1, r1, #3
 433 00e2 01F10401 		add	r1, r1, #4
 434 00e6 F868     		ldr	r0, [r7, #12]
 435 00e8 4118     		adds	r1, r0, r1
 436 00ea 0868     		ldr	r0, [r1, #0]
 437 00ec B968     		ldr	r1, [r7, #8]
 438 00ee 01F10C01 		add	r1, r1, #12
 439 00f2 0968     		ldr	r1, [r1, #0]
 440 00f4 411A     		subs	r1, r0, r1
 441 00f6 01FB03F3 		mul	r3, r1, r3
 442 00fa D218     		adds	r2, r2, r3
 443 00fc FB6D     		ldr	r3, [r7, #92]
 444 00fe 03F10803 		add	r3, r3, #8
 445 0102 4FEA8303 		lsl	r3, r3, #2
 446 0106 07F16001 		add	r1, r7, #96
 447 010a CB18     		adds	r3, r1, r3
 448 010c 43F84C2C 		str	r2, [r3, #-76]
  61:../src/main.c **** 
  62:../src/main.c **** 		if(d[0][i]<d[1][i])
 449              		.loc 1 62 0
 450 0110 FB6D     		ldr	r3, [r7, #92]
 451 0112 4FEA8303 		lsl	r3, r3, #2
 452 0116 07F16002 		add	r2, r7, #96
 453 011a D318     		adds	r3, r2, r3
 454 011c 53F84C2C 		ldr	r2, [r3, #-76]
 455 0120 FB6D     		ldr	r3, [r7, #92]
 456 0122 03F10803 		add	r3, r3, #8
 457 0126 4FEA8303 		lsl	r3, r3, #2
 458 012a 07F16000 		add	r0, r7, #96
 459 012e C318     		adds	r3, r0, r3
 460 0130 53F84C3C 		ldr	r3, [r3, #-76]
 461 0134 9A42     		cmp	r2, r3
 462 0136 0CDA     		bge	.L13
  63:../src/main.c **** 		{
  64:../src/main.c **** 			class[i] = 0;
 463              		.loc 1 64 0
 464 0138 FB6D     		ldr	r3, [r7, #92]
 465 013a 4FEA8303 		lsl	r3, r3, #2
 466 013e 7A68     		ldr	r2, [r7, #4]
 467 0140 D318     		adds	r3, r2, r3
 468 0142 4FF00002 		mov	r2, #0
 469 0146 1A60     		str	r2, [r3, #0]
  65:../src/main.c **** 			d0_counter++;
 470              		.loc 1 65 0
 471 0148 BB6D     		ldr	r3, [r7, #88]
 472 014a 03F10103 		add	r3, r3, #1
 473 014e BB65     		str	r3, [r7, #88]
 474 0150 0BE0     		b	.L14
 475              	.L13:
  66:../src/main.c **** 		}
  67:../src/main.c **** 		else
  68:../src/main.c **** 		{
  69:../src/main.c **** 			class[i] = 1;
 476              		.loc 1 69 0
 477 0152 FB6D     		ldr	r3, [r7, #92]
 478 0154 4FEA8303 		lsl	r3, r3, #2
 479 0158 7A68     		ldr	r2, [r7, #4]
 480 015a D318     		adds	r3, r2, r3
 481 015c 4FF00102 		mov	r2, #1
 482 0160 1A60     		str	r2, [r3, #0]
  70:../src/main.c **** 			d1_counter++;
 483              		.loc 1 70 0
 484 0162 7B6D     		ldr	r3, [r7, #84]
 485 0164 03F10103 		add	r3, r3, #1
 486 0168 7B65     		str	r3, [r7, #84]
 487              	.L14:
  56:../src/main.c **** 	for (i=0; i<DATAPOINT; i++)
 488              		.loc 1 56 0
 489 016a FB6D     		ldr	r3, [r7, #92]
 490 016c 03F10103 		add	r3, r3, #1
 491 0170 FB65     		str	r3, [r7, #92]
 492              	.L12:
  56:../src/main.c **** 	for (i=0; i<DATAPOINT; i++)
 493              		.loc 1 56 0 is_stmt 0 discriminator 1
 494 0172 FB6D     		ldr	r3, [r7, #92]
 495 0174 072B     		cmp	r3, #7
 496 0176 7FF753AF 		ble	.L15
  71:../src/main.c **** 		}
  72:../src/main.c **** 	}
  73:../src/main.c **** 	// print all distances
  74:../src/main.c **** 	for (i=0; i<DATAPOINT; i++)
 497              		.loc 1 74 0 is_stmt 1
 498 017a 4FF00003 		mov	r3, #0
 499 017e FB65     		str	r3, [r7, #92]
 500 0180 28E0     		b	.L16
 501              	.L17:
  75:../src/main.c **** 	{
  76:../src/main.c **** 		printf( "point %d = centroid 1-->%d centroid 2 -->%d , class = %d \n",i+1, d[0][i],d[1][i],class[
 502              		.loc 1 76 0 discriminator 2
 503 0182 40F20003 		movw	r3, #:lower16:.LC5
 504 0186 C0F20003 		movt	r3, #:upper16:.LC5
 505 018a FA6D     		ldr	r2, [r7, #92]
 506 018c 02F10101 		add	r1, r2, #1
 507 0190 FA6D     		ldr	r2, [r7, #92]
 508 0192 4FEA8202 		lsl	r2, r2, #2
 509 0196 07F16000 		add	r0, r7, #96
 510 019a 8218     		adds	r2, r0, r2
 511 019c 52F84C5C 		ldr	r5, [r2, #-76]
 512 01a0 FA6D     		ldr	r2, [r7, #92]
 513 01a2 02F10802 		add	r2, r2, #8
 514 01a6 4FEA8202 		lsl	r2, r2, #2
 515 01aa 07F16000 		add	r0, r7, #96
 516 01ae 8218     		adds	r2, r0, r2
 517 01b0 52F84C4C 		ldr	r4, [r2, #-76]
 518 01b4 FA6D     		ldr	r2, [r7, #92]
 519 01b6 4FEA8202 		lsl	r2, r2, #2
 520 01ba 7868     		ldr	r0, [r7, #4]
 521 01bc 8218     		adds	r2, r0, r2
 522 01be 1268     		ldr	r2, [r2, #0]
 523 01c0 0092     		str	r2, [sp, #0]
 524 01c2 1846     		mov	r0, r3
 525 01c4 2A46     		mov	r2, r5
 526 01c6 2346     		mov	r3, r4
 527 01c8 FFF7FEFF 		bl	printf
  74:../src/main.c **** 	for (i=0; i<DATAPOINT; i++)
 528              		.loc 1 74 0 discriminator 2
 529 01cc FB6D     		ldr	r3, [r7, #92]
 530 01ce 03F10103 		add	r3, r3, #1
 531 01d2 FB65     		str	r3, [r7, #92]
 532              	.L16:
  74:../src/main.c **** 	for (i=0; i<DATAPOINT; i++)
 533              		.loc 1 74 0 is_stmt 0 discriminator 1
 534 01d4 FB6D     		ldr	r3, [r7, #92]
 535 01d6 072B     		cmp	r3, #7
 536 01d8 D3DD     		ble	.L17
  77:../src/main.c **** 	}
  78:../src/main.c **** 	if(d1_counter>d0_counter)
 537              		.loc 1 78 0 is_stmt 1
 538 01da 7A6D     		ldr	r2, [r7, #84]
 539 01dc BB6D     		ldr	r3, [r7, #88]
 540 01de 9A42     		cmp	r2, r3
 541 01e0 02DD     		ble	.L18
  79:../src/main.c **** 		return 1;
 542              		.loc 1 79 0
 543 01e2 4FF00103 		mov	r3, #1
 544 01e6 01E0     		b	.L19
 545              	.L18:
  80:../src/main.c **** 	else
  81:../src/main.c **** 		return 0;
 546              		.loc 1 81 0
 547 01e8 4FF00003 		mov	r3, #0
 548              	.L19:
  82:../src/main.c **** }
 549              		.loc 1 82 0
 550 01ec 1846     		mov	r0, r3
 551 01ee 07F16007 		add	r7, r7, #96
 552 01f2 BD46     		mov	sp, r7
 553 01f4 B0BD     		pop	{r4, r5, r7, pc}
 554              		.cfi_endproc
 555              	.LFE1:
 557 01f6 00BF     		.text
 558              	.Letext0:
DEFINED SYMBOLS
                            *ABS*:00000000 main.c
C:\Users\chewy\AppData\Local\Temp\cc5A81Xx.s:21     .rodata:00000000 $d
C:\Users\chewy\AppData\Local\Temp\cc5A81Xx.s:22     .rodata:00000000 .LC2
C:\Users\chewy\AppData\Local\Temp\cc5A81Xx.s:25     .rodata:0000001c .LC3
C:\Users\chewy\AppData\Local\Temp\cc5A81Xx.s:28     .rodata:00000044 .LC4
C:\Users\chewy\AppData\Local\Temp\cc5A81Xx.s:31     .rodata:00000070 .LC0
C:\Users\chewy\AppData\Local\Temp\cc5A81Xx.s:65     .rodata:000000f0 .LC1
C:\Users\chewy\AppData\Local\Temp\cc5A81Xx.s:75     .text.main:00000000 $t
C:\Users\chewy\AppData\Local\Temp\cc5A81Xx.s:80     .text.main:00000000 main
C:\Users\chewy\AppData\Local\Temp\cc5A81Xx.s:324    .text.classification_cCode:00000000 classification_cCode
C:\Users\chewy\AppData\Local\Temp\cc5A81Xx.s:315    .rodata:00000110 .LC5
C:\Users\chewy\AppData\Local\Temp\cc5A81Xx.s:319    .text.classification_cCode:00000000 $t
                     .debug_frame:00000010 $d

UNDEFINED SYMBOLS
__aeabi_dmul
__aeabi_d2iz
memcpy
printf
classification
