class c_1774_1;
    integer i = -294;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1774_1;
    c_1774_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xzxxz0110z100zzxzx11zzz0110x00zxxxxzzzzxzxzxxxzxxxzzxzxzzzzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
