class c_2907_1;
    integer i = -483;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2907_1;
    c_2907_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx1xz1x1101x1zxxx10z1x00zz1x00z1xxzxzxxxzxzxxxxzzzzxzxxxxxxxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
