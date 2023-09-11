class c_1687_1;
    integer i = -280;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1687_1;
    c_1687_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zxz10z0000z0z010x10xzz1z01101zzzxxzzzzzxzxxxzxzxzzzxxxxxxzzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
