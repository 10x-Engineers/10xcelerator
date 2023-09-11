class c_3408_1;
    integer i = -566;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3408_1;
    c_3408_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x110x001zz1xxz1111xxx1z1zz1z1011zxzzzxzxzxzxxxzxxxxzxxxxxzzxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
