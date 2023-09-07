class c_444_1;
    integer i = -72;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_444_1;
    c_444_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx011110100010xx100zxxzx0z00xx0zxzxxzxxzxxzzzzzzzzzxxxxxxzxzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
