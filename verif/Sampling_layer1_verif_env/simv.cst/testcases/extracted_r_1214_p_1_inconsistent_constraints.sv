class c_1214_1;
    integer i = -201;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1214_1;
    c_1214_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xzx1101x10xz011z00zx00zzxzx1xx0xxzzxzzzzxxzzzzzxzxzzzxxxzxzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
