class c_76_1;
    integer i = -11;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_76_1;
    c_76_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11zx0x001xz000111xxx101zxxx1z0xxxxzzzxxxzzzzzzxzzxxzxxzxzxxxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
