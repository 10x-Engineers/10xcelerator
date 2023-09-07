class c_3096_1;
    integer i = -514;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3096_1;
    c_3096_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "101x00z110xx1zzzxxx101zx010xzzzxxzxxxzxzzzxxzxxzxxzxzzzzzxzzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
