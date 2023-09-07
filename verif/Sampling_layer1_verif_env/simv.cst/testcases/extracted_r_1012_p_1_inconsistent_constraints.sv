class c_1012_1;
    integer i = -167;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1012_1;
    c_1012_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11z01x0xz01zxzxz0z10000z1x0z0x00zzzzxzzxzzzxxxxzzxxzxzxzzzxxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
