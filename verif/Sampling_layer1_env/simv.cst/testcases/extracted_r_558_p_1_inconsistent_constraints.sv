class c_558_1;
    integer i = -91;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_558_1;
    c_558_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx1zzxxz010xz1xz1xxxx1xx10101zxxxzxxzxxxzzxzzzzzzxzxzxzxzzzxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
