class c_300_1;
    integer i = -48;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_300_1;
    c_300_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx00011z10x110x1zx11z00zzx1x00x0zzxzzxzxzzxxzxxzzzxzxxxzxxzxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
