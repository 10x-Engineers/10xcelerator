class c_2257_1;
    integer i = -375;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2257_1;
    c_2257_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11x001xx1xzz11xz0000zx1z10x0x0xxxxzxxxzzzzxzxxxzzzzxxxxzzzxxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
