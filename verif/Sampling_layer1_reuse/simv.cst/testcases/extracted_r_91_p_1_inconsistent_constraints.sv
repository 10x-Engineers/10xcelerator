class c_91_1;
    integer i = -14;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_91_1;
    c_91_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01xz01110xx000001zz1z0zz0zz0z1xzzzzzxzxxxxxzzzzxxxzzxxxzxzxxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
