class c_1884_1;
    integer i = -312;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1884_1;
    c_1884_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xz001xzzxz010xx01xzx0z01x0101xzxzxzxzxzxzzxxxzzxzzxxzxxzxxzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
