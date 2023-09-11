class c_2863_1;
    integer i = -476;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2863_1;
    c_2863_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz1z10zx1xx0zx01011111zx1x1xz100xxzzxxzzzzxxxxxzxzxzzxxxzzzzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
