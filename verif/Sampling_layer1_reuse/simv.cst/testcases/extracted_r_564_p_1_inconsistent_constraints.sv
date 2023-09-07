class c_564_1;
    integer i = -92;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_564_1;
    c_564_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z0x0zz0z0xxz1zx01zzzx11x0xxzx1xxzzxzxxzxzzzzxxxxzxxzzzxzzzxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
