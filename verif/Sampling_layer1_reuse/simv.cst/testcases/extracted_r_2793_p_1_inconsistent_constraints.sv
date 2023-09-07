class c_2793_1;
    integer i = -464;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2793_1;
    c_2793_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z111x10z1zzzzzx1xxzxzz1z1xz0xxxzxxxzzzzzxzxzxxxzxxxzxxxzzxzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
