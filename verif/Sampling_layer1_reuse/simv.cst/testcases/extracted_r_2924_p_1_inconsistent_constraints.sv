class c_2924_1;
    integer i = -486;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2924_1;
    c_2924_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x0zz1zz0zz1x10z1z1x10z1z1z0z100xzzzxxzxzzzxxzzzzzxzxxxzzxzxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
