class c_2505_1;
    integer i = -416;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2505_1;
    c_2505_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz110xx1xxzzx1zxxzxx1xzzzx1zz111zxzxzzxxzxxzxzzzxxxzxxzzzzzxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
