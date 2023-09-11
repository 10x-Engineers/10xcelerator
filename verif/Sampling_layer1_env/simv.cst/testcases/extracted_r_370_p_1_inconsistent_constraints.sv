class c_370_1;
    integer i = -60;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_370_1;
    c_370_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10x1zx00zzzxz10x1z1zx1zzxx11z1zxzxzxzzzxzzzxxzxxxxxzzxxxxxzzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
