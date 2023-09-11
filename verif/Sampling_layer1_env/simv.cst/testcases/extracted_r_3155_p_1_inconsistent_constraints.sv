class c_3155_1;
    integer i = -524;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3155_1;
    c_3155_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx1xz1zzxz0xxx011001xx1000z0zx1xxzzxxxzzzxzxzzxxxxzxzxzzzxzxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
