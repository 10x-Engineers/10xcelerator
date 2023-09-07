class c_2536_1;
    integer i = -421;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2536_1;
    c_2536_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zx01zxzx10x10xz10xzzz00z1xxzx00xxxzxxxxzxzxzxxzzzzxxxzxxxxxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
