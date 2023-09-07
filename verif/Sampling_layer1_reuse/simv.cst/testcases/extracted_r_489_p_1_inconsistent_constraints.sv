class c_489_1;
    integer i = -80;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_489_1;
    c_489_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xz101x111x0zx0zxz0z0z1x0zzx1xx0zxxxzxzzxzzxzxzxxzzzzzzxzzzzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
