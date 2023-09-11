class c_1168_1;
    integer i = -193;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1168_1;
    c_1168_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0x0xz1xzx11zx01x01zzzzzz010xxx1xxxxzzzzxxxxxzzzxxzzxxzzxzxzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
