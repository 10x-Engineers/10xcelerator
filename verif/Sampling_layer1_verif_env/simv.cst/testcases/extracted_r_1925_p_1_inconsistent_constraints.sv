class c_1925_1;
    integer i = -319;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1925_1;
    c_1925_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x100xzx10x1xx1x011x1xxx110x11z1xzzxzzxxxxzzzzxzzxxxzzxxzzzxzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
