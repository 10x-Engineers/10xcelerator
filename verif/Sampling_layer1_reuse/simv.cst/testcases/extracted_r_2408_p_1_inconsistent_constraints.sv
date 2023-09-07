class c_2408_1;
    integer i = -400;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2408_1;
    c_2408_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0x10z1xzzx110x10x11xzzxxx001z10xxxxxxxzzzxxxxzzxzxzzzzzxxxxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
