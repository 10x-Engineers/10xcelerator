class c_1493_1;
    integer i = -247;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1493_1;
    c_1493_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1z10z11x0z0xx11xzx11x0xxzxx101zxzxxxzxzxxxxzxxzxzxzzxxzzzzxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
