class c_281_1;
    integer i = -45;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_281_1;
    c_281_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xxx1000x1xx0zxz0zz0xz0zx01100zxzxzzzzxzzzxxxxzzxzxzzxxzxxxzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
